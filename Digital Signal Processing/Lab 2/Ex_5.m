clc;
close all;
n=0:0.001:0.5;
x=sin(2*pi*80*n);
x1=awgn(x,10);
y1=x+x1;
y=xcorr(y1,x);
subplot(4,1,1);
plot(n,x)
title('input sinusoid')
subplot(4,1,2);
plot(n,x1)
title('white gaussian noise')
subplot(4,1,3);
plot(n,y1)
title('sum of input and noise')
subplot(4,1,4);
plot(0:length(y)-1,y)
title('autocorrelation');