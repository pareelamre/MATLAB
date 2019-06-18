clc;
close all;
clear all;
a=imread('cameraman.tif','tif');
a=im2double(a);
b=imrotate(a,45);
b=im2double(b);
c1=fft2(a);
c2=fft2(b);
d1=fftshift(c1);
d2=fftshift(c2);
figure(1);
subplot(211);
imshow(log10(abs(d1)));
title('ft before rotation');
subplot(212);
imshow(log10(abs(d2)));
title('ft after rotation');
figure(2)
subplot(211);
imshow(a);
title('original picture');
subplot(212);
imshow(b);
title('rotated picture');

