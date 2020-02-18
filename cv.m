function [val,stats] = cv(x)
% Coefficient of variation
%
% This function returns the coefficient of variation value of a given vector.
% Stats returns the std and mean.
% Works also with column vectors.
% class of output is scalar.
%
% val = cv(x)
%
% example: x = [1,2,3,4,5];
% val = cv(x)
% Written by Tutku Oztel, 03.08.2018

    if isvector(x) == true
     val = std(x)/mean(x);
     stats.std = std(x);
     stats.mean = mean(x);
        elseif isvector(x) == false
        error('Input has to be a vector.');
    end
end

