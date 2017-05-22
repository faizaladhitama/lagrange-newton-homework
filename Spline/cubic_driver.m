function cubic_driver(num_points)
%  cubic_driver(n) computes a cubic spline
%  interpolant of the runge function
%    
%     f(x) = 1/(1+25*x^2)
%
%  based on n linearly spaced 
%  points in the interval [-1,1] 

runge = @(x) 1./(1+ 25*x.^2);

x = linspace(1,2,num_points);
y = runge(x);

[s0,s1,s2,s3] = cubic_spline(x',y');

plot_points = 1000;
xx = linspace(-1,1,plot_points);
yy = runge(xx);

plot(xx,yy,'g');
hold on;
plot_cubic_spline(x,s0,s1,s2,s3);