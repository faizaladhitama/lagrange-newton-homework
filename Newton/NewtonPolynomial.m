function [polynom] = NewtonPolynomial(coef,x,t)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    len = length(coef);
    
    polynom = coef(1);
    for i=2:len
        coef_m = 1;
        for j=1:i-1
            coef_m=coef_m*(t-x(j));
        end
        polynom = polynom + (coef(i)*coef_m);
    end
end

