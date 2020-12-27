[y, fs] = audioread('Salinan audio.wav');
Y = resample(y,10000,fs);
sound(y,fs)
tt = length(y);
t = 1:tt;
plot(t,y);
ylabel("Amplitudo");
xlabel("Waktu (s)");
grid