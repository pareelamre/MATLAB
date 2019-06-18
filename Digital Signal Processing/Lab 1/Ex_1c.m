close all;
clear;
clc;
k = 0:0.01:5;
y = sawtooth(2*pi*k,0.5);
plot(k,y);
