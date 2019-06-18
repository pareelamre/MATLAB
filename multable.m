function [table summa] = multable(n,m)

persistent error_count;
if isempty(error_count),error_count = 0; end
if nargin < 1
    error('must have atleast one input argument')
end
if nargin < 2
    m = n;
elseif ~isscalar(m) || m<1 || m ~= fix(m)
    error_count = error_count + 1;
    if error_count < 3, error('m needs to be a positive integer');
    end

end
if ~isscalar(m) || m<1 || m ~= fix(m)
    error_count = error_count + 1;
    if error_count < 3, error('m needs to be a positive integer');end
end
if error_count >=3
    error_count = 0;
    error('What part of "positive integer" do you not understand');
end

table = (1:n)' * (1:m);

if nargout == 2
    summa = sum(table(:));
end    