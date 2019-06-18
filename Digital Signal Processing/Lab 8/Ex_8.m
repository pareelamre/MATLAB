clc;
clear all;
close all;
a=imread('cameraman.tif','tif');
subplot(211),imshow(a),title('image');
c = [222 272 300 270 221 194];
r = [21 21 75 121 121 75];
BW = roipoly(a,c,r);
subplot(212), imshow(BW),title('Specific region');