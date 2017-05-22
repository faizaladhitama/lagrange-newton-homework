function [coef] = NewtonInterpolation(t,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    if nargin ~= 2
        error('Invalid input parameters'); 
    end
    
    t_len = length(t);
    M = zeros(t_len,t_len);
    
    for a=1:t_len
        M(a,1) = y(a);
    end
    
    for i=2:t_len
        for j=2:i
            if j == i
                M(i,j) = (M(i,j-1)-M(i-1,j-1))/(t(i)-t(1));
            else
                diff = i-j+1;
                M(i,j) = (M(i,j-1)-M(i-1,j-1))/(t(i)-t(diff));
            end
        end
    end
    
    coef = zeros(1,t_len);
    for k=1:t_len
        coef(k) = M(k,k);
    end
end

