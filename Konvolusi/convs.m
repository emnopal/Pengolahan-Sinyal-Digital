for n = 1:10
    if n <= 20
        x(n) = 1;
    else
        x(n) = 0;
    end
end
t = 1:10;
figure(10);
subplot(3,1,1);
stem(t,x);

for n = 1:20
    if n <= 10
        v(n) = 1;
    else
        v(n) = 0;
    end
end
figure(10);
t = 1:20;
subplot(3,1,2);
stem(t,v);

subplot(3,1,3);
stem(conv(x,v));