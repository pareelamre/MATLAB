close all;
b=[0 1 1];
a=[1 5 6];
T=0.1;
fs=1/T;
[bz, az] = bilinear(b, a, fs);
[h,w] = freqs(b,a);
[hz,wz] = freqz(bz,az);
subplot(211);
plot(w*fs/pi,20*log(abs(h)))
title('analog frequency response');
subplot(212);
plot(wz*fs/pi,20*log(abs(hz)))
title('digital frequency response');
