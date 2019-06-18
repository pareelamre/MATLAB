clc;
close all;
Fs = 2000;
wp = [400 500]*2/Fs;
ws=[300 600]*2/Fs;
rp=0.5;
rs=40;
df=(100)/2*pi;
B = 0.5842*(rs - 21)^0.4 + 0.07886*(rs - 21);
N=ceil((rs-7.95)/(14.36*df))+1;
b=fir1(N,wp,kaiser(N+1,B));
[H,W]=freqz(b,1,512);
plot(W/pi,20*log10(abs(H))),grid on;