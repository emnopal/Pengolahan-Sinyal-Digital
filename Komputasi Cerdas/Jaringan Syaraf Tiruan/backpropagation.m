clc
jmlh_input=4;
jmlh_hidden=15;
jmlh_output=1;
wih=zeros(jmlh_input,jmlh_hidden);
woh=zeros(jmlh_hidden,jmlh_output);
bih=zeros(1,jmlh_hidden);
boh=zeros(1,jmlh_output);
max_iter=10000;
lamdha=0.6;
jmlh_data=4;
x=[-1 1 -1 1;
    0 0 0 0;
    1 0 1 0;
    1 -1 1 -1;];
yt=[0.25; %cerah 0-0.25
    0.5; %berawan 0.25-0.5
    0.75; %Hujan 0.5 - 0.75
    1;]; %Hujan Lebat0.75-1
max_error=[];

for t=1:max_iter
    for l=1:jmlh_data
        for j=1:jmlh_hidden
            zih(j)=0;
            for i=1:jmlh_input
                zih(j)=zih(j)+wih(i,j)*x(l,i);
            end
            yih(j)=1/(1+exp(-(zih(j)+bih(j))));
        end
        for k=1:jmlh_output
            zoh(k)=0;
            for j=1:jmlh_hidden
                zoh(k)=zoh(k)+woh(j,k)*yih(1,j);
            end
            yoh(k)=1/(1+exp(-(zoh(k)+boh(k))));
        end
        
%Perhitungan Backward
        for k=1:jmlh_output
            error(k)=yt(l,k)-yoh(k)
            dboh(1,k)=lamdha*(error(k))*(1-yoh(k))*yoh(k);
            boh(1,k)=boh(1,k)+dboh(1,k); %Menghitung Bias baru
            for j=1:jmlh_hidden
                dwoh(j,k)=lamdha*(error(k))*(1-yoh(k))*yoh(k)*yih(j);%% Perubahan bobot
                woh(j,k)=woh(j,k)+dwoh(j,k);%% Menghitung Bobot baru
                errh(j,k)=error(k)/jmlh_hidden;
            end
            for j=1:jmlh_hidden
                bih(j)=bih(j)+lamdha*errh(j,k)*(1-yih(j))*yih(k);
                for i=1:jmlh_input
                    dwih(i,j)=lamdha*errh(j,k)*(1-yih(j))*yih(j)*x(l,i);
                    wih(i,j)=wih(i,j)+dwih(i,j);
                end
            end
        end   
    end
    max_error=[max_error,max(error)];%% Mengindexkan nilai error tiap iterasi 
end
plot(max_error)