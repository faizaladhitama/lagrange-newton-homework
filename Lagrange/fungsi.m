function [y] = fungsi(x)
    % x merupakan titik-titik yang hasilnya diketahui
    % y merupakan nilai fungsi dari titik-titik pada x
    [n,~] = size(x);
    y = zeros(n,1);
    for i = 1:n
        sqr = x(i)*x(i);
        y(i) = exp(sqr);
    end
end