%PSO Source Code;
partikel = 20; 
D = 3; 
atas = 15; 
bawah = 0;
x = (atas - bawah).*rand(partikel,D)+repmat(bawah, partikel, D);
v = zeros(partikel,D); 
p = zeros(partikel,D); 
f = zeros(partikel,1);
iter = 10000; 
c1 = 1; 
c2 = 1; 
minftot = [];

for i = 1:partikel
    x = (atas - bawah).*rand(partikel,D)+repmat(bawah, partikel, D);
    f(i,:) = fitness(x(i,:));
end

P = x; 
fbest = f; 
[~,idk] = min(f); 
G=x(idk,:);

for t = 1:iter
    for d = 1:D
        f(i,:) = fitness(x(i,:));
        for i=1:partikel
            v(i,d) = v(i,d) + (c1*rand) * (P(i,d)-x(i,d)) + (c2*rand) * (G(:,d) - x(i,d));
            x(i,d) = v(i,d) + x(i,d);
        end    
    end
    for i = 1:partikel
        f(i,:) = fitness(x(i,:));
    end  
end

changerow = f < fbest;
fbest = fbest.*(1-changerow)+f.*changerow;
P(changerow,:) = x(changerow,:); 
[minf,idk] = min(fbest);
minftot = [minftot; minf];
G = P(idk,:);
x_optimal = G;
minimum_f = minf;
disp(x_optimal); 
disp(minimum_f);
plot(minftot);