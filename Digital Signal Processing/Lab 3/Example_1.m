clc;
clear;
close all;

b = [1 0.5 0];
a = [1 -1.81 0.81];

[r, p, k] = residuez(b,a);
disp(['r = ' num2str(r')]);
disp(['p = ' num2str(p')]);
disp(['k = ' num2str(k')]);

[z p k] = tf2zp(b,a);
disp('Zeros are at'), disp(z);
disp('Poles are at'), disp(p);
disp('Gain constant is'), disp(k);
zplane(b,a);

N = 512;
[h w] = freqz(b,a,N);
subplot(211), plot(w,abs(h)), title('Magnitude Response');
xlabel('Frequency in Radians'), ylabel('Amplitude');
subplot(212), plot(w,angle(h)), title('Phase Response');
xlabel('Frequency in Radians'), ylabel('Phase in Radians');

L = 30;
[y n] = impz(b,a,L);
figure;
stem(y), title('Impulse Response, h[n]');
grid on;
xlabel('Sample Number'), ylabel('Amplitude');

n = 0:100;
u = [n>=0];
x = 3*cos(n*pi/3).*u;
y = filter(b,a,x);
figure;
subplot(211),plot(n,x);
subplot(212),plot(n,y);