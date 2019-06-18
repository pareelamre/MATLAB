n = 0:110;
a = [1 0];
b = [1 -1];
f = sin(pi*n/25).*([(n)>=0]-[(n-100)>=0]);
y = filter(b,a,f);
stem(n,y);