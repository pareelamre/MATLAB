close all;
clear;
clc;
n = 0:15; %time index for the discrete signal from 0 to 15 with unity sampling
u = [(n)>=0]; %unit step
u5 = [(n-5)>=0]; %delayed step
a5 = 5*u; %scaled unit step
xn = u - u5; %rectangular window x[n] = u[n] - u[n-5]
xr = n.*u; %ramp signal

subplot(321), stem(n,u), title('Unit Step Function'), ylabel('Amplitude');
subplot(322), stem(n,u5), title('Delayed Unit Step Function');
subplot(323), stem(n,a5), title('Amplitude Scaled Step Function'), ylabel('Amplitude');
subplot(324), stem(n,xn), title('Window of length 5'), ylabel('x[n]'), xlabel('n----->');
subplot(325), stem(n,xr), title('Ramp Function'), ylabel('Amplitude'), xlabel('n----->');


 