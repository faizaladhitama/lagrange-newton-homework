function [y] = Exponent_square_t(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    x_len = length(x);
    y = zeros(1,x_len);
    
    for row=1:x_len
        y(row) = exp(x(row)^2);
    end
end

