function [] = Create_Plot()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    x = [-2 -1 0 1 2];
    x_len = length(x);
    y = Exponent_square_t(x)
    
    coef = NewtonInterpolation(x,y)
    dot = zeros(1,length(x));
    
    counter = 1;
    m = -2:0.01:2
    for i = -2:0.01:2
        dot(counter) = NewtonPolynomial(coef,x,i);
        counter=counter+1;
    end
    %dot
    plot(x,y,m,dot)
    
    %f(5)
    
    %error
    syms t;
    ft = exp(t^2);
    df = diff(ft,t,6);
    fact = factorial(6);
    multiplication = 1;
    for i=1:x_len
        multiplication = multiplication*(2-x(i));
    end
    error = eval(subs(df,t,2)/fact)*multiplication;
end

