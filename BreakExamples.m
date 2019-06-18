%% Examples of skipping remainder of iterations

%% Example 1
ii = 1;
while ii < length(readings) && readings(ii) <= 100
    readings(ii) = 0;
    ii = ii + 1;
end

%% Example 2
for ii = 1:length(readings)
    if readings(ii) > 100
        break;
    else
        readings(ii) = 0;
    end
end

%% Example 3
for ii = 1:length(readings)
    if readings(ii) > 100
        break;
    end
end
fprintf("First reading above 100 is at index %d \n", ii);
   