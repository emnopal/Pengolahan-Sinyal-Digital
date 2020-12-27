function y=coba_forward(x,woh,boh,wih,bih,jmlh_input,jmlh_hidden,jmlh_output)
    for j=1:jmlh_hidden
        zih(j)=0;
        for i=1:jmlh_input
            zih(j)=zih(j)+wih(i,j)*x(1,i);
        end
        yih(j)=1/(1+exp(-(zih(j)+bih(j))));
    end
    for k=1:jmlh_output
        zoh(k)=0;
        for j=1:jmlh_hidden
            zoh(k)=zoh(k)+woh(j,k)*yih(1,j);
        end
    yoh(k)=1/(1+exp(-(zoh(k)+boh(k))));
    y(k)=yoh(k);
    end
end