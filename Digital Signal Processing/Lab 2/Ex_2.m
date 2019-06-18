close all;
clear;
clc;
n = -10:10;
u = [(n)>=0];
u3 = [(n-3)>=0];
a = u - u3;
subplot(411),stem(n,a);

k = -10:0.1:10;
b = sin(k*pi/3).*[(-10:0.1:10)>=0];
subplot(412), plot(k,b);

subplot(413), plot(n,0.5.^n),title('magnitude');
subplot(414), plot(n,exp(j*pi*n/2)),title('angle');