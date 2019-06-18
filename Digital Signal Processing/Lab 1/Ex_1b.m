k = 0:0.001:5;
v = square(2*pi*k,25);
subplot(311),plot(k,v),title('25% duty cycle');
x = square(2*pi*k,50);
subplot(312),plot(k,x),title('50% duty cycle');
y = square(2*pi*k,75);
subplot(313), plot(k,y),title('75% duty cycle');