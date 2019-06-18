clear, close all, clc;
Fs = 1000;
t = 0:1/Fs:0.5;
wc = 2*100/Fs;
x = sin(2*pi*t*50) + sin(2*pi*t*200);
[b,a] = butter(3,wc);
[H,W] = freqz(b,a,Fs);
figure(1);
k = W*Fs/(2*pi);
plot(k,20*log10(abs(H))),grid on;
title('Frequency Response');
xlabel('Frequency in Hz'),ylabel('Magnitude in dB');

yb = filter(b,a,x);
N = 512;
w = [0:N/2-1]*(Fs/N);

X = fft(x,N);
Yb = fft(yb,N);
figure(2);
subplot(211),plot(w,abs(X(1:N/2)));
title('Spectrum of input signal');
subplot(212), plot(w,abs(Yb(1:N/2)));
title('Spectrum of filtered signal');