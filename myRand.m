function [a,s] = myRand(low,high)
a = low + rand(3,4)*(high-low);
s = sumAllElements(a);

function suma = sumAllElements(M)
v = M(:);
suma = sum(v);