close all;
clear;
clc;
Fs = 1000; %sampling frequency
f = 200; %signal frequency
t = 0:1/Fs:1/f; %generation of time sequence at sampling frequency Fs for 1 period 
x = 5*sin(2*pi*f*t); %sine wave of frequency f Hz and amplitude 5
subplot(311), stem(t,x), title('Sine wave sampled at 1000 Hz for 1 period'), ylabel('Amplitude');

Fs1 = 10000; %new sampling frequency
T = 0:1/Fs1:1/f;
y = 5*sin(2*pi*f*T);
subplot(312), stem(T,y), title('Sine wave sampled at 10000 Hz for 1 period'), ylabel('Amplitude');

TT = 0:1/Fs1:2/f;
z = 5*sin(2*pi*f*TT);
subplot(313), stem(TT,z), title('Sine wave sampled at 10000 Hz for 2 period'), ylabel('Amplitude');