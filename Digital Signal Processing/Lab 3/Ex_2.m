clc;
clear;
close all;
z = input('Enter zeros: ');
p = input('Enter poles: ');
k = input('Enter Gain Constant: ');
[a b] = zp2tf(z.',p.',k.')
[h w] = freqz(a,b);
plot(w,abs(h));
