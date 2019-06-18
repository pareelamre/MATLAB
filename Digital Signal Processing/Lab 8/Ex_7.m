clc;
close all;
clear all;
a = imread('cameraman.tif','tif');
subplot(221), imshow(a);
title('Given image');
a1 = dct2(a);
a2 = log(abs(a1));
a3 = mat2gray(a2);
subplot(222),imshow(a3);
title('DCT of the image');
a4 = triu(a1);
a5 = idct2(a4);
a6 = mat2gray(abs(a5));
subplot(223), imshow(a6);
title('Reconstructed image after compression');

%dct is used in jpeg, recontruction can be done with half of data