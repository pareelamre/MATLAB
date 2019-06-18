clc;
clear all;
close all;
a=imread('cameraman.tif','tif');
figure(1);
imshow(a);title('image');
a=im2double(a);
b=fft2(a);
figure(2);
subplot(221);
plot(20*log10(abs(b)));
subplot(222);
plot(angle(b));
figure(3);
c=fftshift(b);
imshow(c);
