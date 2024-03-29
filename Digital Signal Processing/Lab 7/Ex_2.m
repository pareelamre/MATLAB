clc;
close all;
Fs = 2000;
wp = [400 500]*2/Fs;
N = ceil(3.3*2*pi/(ws-wp));
ws=[300 600]*2/Fs;
b = fir1(N,wn, 'bandpass');
[H,W] = freqz(b,1,512);
plot(W/pi,20*log10(abs(H))), grid on, title('FIR filter using Hamming window');
xlabel('Normalized Frequency'), ylabel('Gain in dB');