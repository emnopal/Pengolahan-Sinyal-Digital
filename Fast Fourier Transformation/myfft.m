function [y] = myfft(x)
N = length(x);
for k = 1:N
    y(k) = 0;
    for j = 1:N
        y(k) = y(k)+x(j)*exp(-i*2*pi*(j-1)*(k-1)/N);
    end;
end;