function cubic_driver(num_points)
runge = @(x) (5*sin(2*x))./x;

x = linspace(1,2,num_points);
y = runge(x);

[s0,s1,s2,s3] = cubic_spline(x',y');

plot_points = 1000;
xx = linspace(-1,1,plot_points);
yy = runge(xx);

plot(xx,yy,'g');
hold on;
plot_cubic_spline(x,s0,s1,s2,s3);