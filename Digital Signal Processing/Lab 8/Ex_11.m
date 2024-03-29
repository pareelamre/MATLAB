clc;
close all;
clear all;
[a,fs] = audioread('sleep away.wav');
subplot(311), plot(a);
title('Speech signal plot'), xlabel('Time');
%sound(a,fs);
a1 = abs(fft(a));

len = length(a);
t = 0:1:len-1;
t = t.*fs;
subplot(312), plot(t,a1), grid on;
title('Frequency components'), xlabel('Frequency');
subplot(313), spectrogram(a,hamming(64),32,64,fs);
title('STFT of the speech sample');
