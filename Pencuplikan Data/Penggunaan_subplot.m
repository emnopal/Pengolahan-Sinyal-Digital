% penggunaan subplot

figure;
t = [0:0.005:0.5];
sinus = sin(pi*25*t);
cosinus = cos(pi*25*t);
kotak = square(pi*25*t);
gigi = sawtooth(pi*25*t);

subplot(2,2,1);plot(t,sinus);axis ([0 0.5 -2 2]);title('Contoh Gelombang Sinus');
subplot(2,2,2);plot(t,cosinus);axis ([0 0.5 -2 2]);title('Contoh Gelombang Cosinus');
subplot(2,2,3);plot(t,kotak);axis ([0 0.5 -2 2]);title('Contoh Gelombang Kotak');
subplot(2,2,4);plot(t,gigi);axis ([0 0.5 -2 2]);title('Contoh Gelombang Gigi');