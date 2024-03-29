clc;
close all;
wp=400;
ws=500;
rp=0.5;
rs=40;
df=(ws-wp)/2*pi;
B = 0.5842*(rs - 21)^0.4 + 0.07886*(rs - 21);
N = 25;
wn = [0.4 0.5];
b = fir1(N,wn,kaiser(N+1,B));
[H,W] = freqz(b,1,512);
plot(W/pi,20*log10(abs(H))),grid on;