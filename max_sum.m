function [summa index] = max_sum(v,n)

count = 0;
[x y] = size(v);
if y >= n
    
    summa = sum(v(1:n));
    index = 1;



    for i = 1:y-n+1
        count = sum(v(i:i+n-1));
        if count > summa
            summa = count;
            index = i;
        end
    end
end



if n > y
    summa = 0;
    index = -1;
end

