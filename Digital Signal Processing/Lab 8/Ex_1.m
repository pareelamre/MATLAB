clc;
clear all;
close all;
a=imread('cameraman.tif','tif');
subplot(221),imshow(a),title('image');
a=a';
subplot(222),imshow(a),title('rotated image');
a=double(a);
a=256-a;
a=uint8(a);
subplot(223),imshow(a),title('negative');
%in2double