function valid = valid_date(year,month,day)

month_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

if rem(year,4) == 0    
    month_day(2) = 29;
    if rem(year,100) == 0
        
        
        if rem(year,400) == 0
            month_day(2) = 29;
        else
            month_day(2) = 28;
        end
    end
    
end

if ~isscalar(year) || ~isscalar(month) || ~isscalar(day)
    valid = false;
    return
end

if year ~= fix(year) || month ~= fix(month) || day ~= fix(day)
    valid = false;
    return
end

if month_day(month) >= day && day > 0
    valid = true;
else
    valid = false;
end

if day <= 0 || year <= 0 || month <= 0 
    valid = false;
end
    
