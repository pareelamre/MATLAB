close all;
clear;
clc;
x = [3,11,7,0,-1,4,2];
nx = -3:3;
ny = nx + 2;
y1 = x;
w = randn(1, length(y1));
y = y1 + w;
nyb = ny(1) + nx(1);
nye = ny(length(y1)) + nx(length(x));
ny = nyb:nye;
xcr = xcorr(x,y);
stem(ny,xcr);
title('Cross Correlation');
xlabel('Time,n');