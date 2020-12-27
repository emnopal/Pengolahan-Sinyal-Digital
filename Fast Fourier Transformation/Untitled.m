n = 20;
x = 0;
for j=1:3000
    x = x+2*pi/1000;
    %writetable(x, 'x.txt');
    fx(j) = 1/2;
    %writetable(fx, 'fx1.txt');
    for i = 1:2:n
        fx(j) = fx(j)+(2/pi)*sin(i*x)/i;
        %writetable(fx, 'fx2.txt');
    end;
end;

figure;
plot(fx);