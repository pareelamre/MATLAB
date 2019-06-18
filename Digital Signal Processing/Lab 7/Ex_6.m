clc, clear all, close all;
Fs=500;
wp = [2*28/Fs, 2*32/Fs];%For normalising divide by pi
ws = [2*25/Fs, 2*35/Fs];
t=0:1/Fs:0.5;
x = sin(2*pi*10*t) + sin(2*pi*30*t) + sin(2*pi*50*t);
figure(1)
plot(x),grid on, title('Input Signal');
xlabel('time'),ylabel('Amplitude');
N = ceil(6.6*pi/(ws(2)-wp(2))); % estimates order of the filter
b = fir1(N,wp);
[H,W] = freqz(b,1,1024,Fs);
figure(2);
plot(W,20*log10(abs(H))), grid on, title('FIR filter using Hamming Window');
xlabel('Frequency'), ylabel('Gain in dB');
% this filter provides about 51dB attenuation in stop band
% and pass band ripples are less than 0.25dB as expected.
yb = filter(b,1,x);

% Getting spectrum and plot
N = 512;
w = [0:N/2 - 1]* (Fs/N) ; %defining frequency vector for plotting
X = fft(x,N);
Yb = fft(yb,N);
figure(3);
subplot(121), plot(w,abs(X(1:N/2)));
title('Spectrum of input signal ' ) ;
subplot(122), plot(w,abs(Yb(1:N/2)));
title('Spectrum of filtered signal ' ) ;
