clc;
close all;
clear all;
a=imread('circuit.tif','tif');
b=edge(a,'horizontal');
c=edge(a,'vertical');
subplot(311), imshow(a);
subplot(312);
imshow(b);
subplot(313);
imshow(c);

