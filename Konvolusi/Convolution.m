%First Sine 
figure(1);
t = 1:20;
x1 = sin(2*pi*1*t);
subplot(3,1,1)
stem(x1);

%Second Sine
t=1:20;
x2=1*sin(2*pi*0.5*t + 0.5*pi);
subplot(3,1,2)
stem(x2);

%Convolution
subplot(3,1,3);
stem(conv(x1,x2))