clc;
clear all;
close all;
a=imread('cameraman.tif','tif');
subplot(211),imshow(a),title('image');
BW = roipoly(a);
subplot(212), imshow(BW),title('Specific region');