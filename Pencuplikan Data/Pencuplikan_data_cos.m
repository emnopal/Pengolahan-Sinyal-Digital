%Pencuplikan data sinyal cos

%Sinyal data (analog)
fa = 50;
t = 0:0.001:100;
x = cos(pi*fa*t)

%Pencuplikan data waktu diskrit
fs = 50;
dt = 1/fs;
ts = 0:dt:100;
xst = cos(pi*fa*ts);

% grafik
figure;
subplot (3,1,1); plot (t,x); grid on;
axis ([0 0.5 0 2]); title ('Sinyal Analog');
subplot (3,1,2); plot (t,x); grid on;
axis ([0 0.5 0 2]); title ('Proses Pencuplikan Sinyal Analog');
hold on; stem(ts,xst,':or');
subplot (3,1,3); stem(ts,xst,':or'); grid on;
axis ([0 0.5 0 2]); title ('Hasil Pencuplikan Sinyal Analog');
