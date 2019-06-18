clc;
clear;
close all;
a = [1 -6 9];
b = [1 0 -1];
%Impulse Response
L = 5;
[y,n] = impz(b,a,L);
figure;
stem(y), title('Impulse Resonse h[n]');
grid on;
xlabel('Sample Number'),ylabel('Amplitude');
%Difference Equation
disp('Difference Eqaution Coefficients');
disp('y: '), disp(b);
disp('x: '), disp(a);
%Pole-Zero plot
[z p k] = tf2zp(b,a);
disp('Zeros are at'), disp(z);
disp('Poles are at'), disp(p);
disp('Gain constant is'), disp(k);
figure;
zplane(b,a);
%Output for given input signal
n = 0:100;
u = [n>=0];
x = 3*sin(n*pi/3).*u;
y = filter(b,a,x);
figure;
subplot(211),plot(n,x),title('Input');
subplot(212),plot(n,y), title('Output for given input');