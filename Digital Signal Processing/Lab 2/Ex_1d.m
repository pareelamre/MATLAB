close all;
clear;
clc;
k = 0:0.001:0.14;
y = sin(2*pi*10*k) + sin(2*pi*30*k) + sin(2*pi*60*k);
plot(k,y);