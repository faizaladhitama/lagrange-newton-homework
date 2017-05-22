function [y,a] = lagrange(t,x)
    % a merupakan vektor dari koefisien polinomial
    % t merupakan titik-titik yang hasilnya diketahui
    % x merupakan titik dimana nilai fungsinya dicari
    [n,~] = size(t);
    f = fungsi(t);
    a = ones(n,1);
    y = 0;
    
    for i = 1:n
        if(ne(f(i),0))
            for j = 1:n
                if(ne(i,j))
                    a(i) = a(i) * (x - t(j)) / (t(i) - t(j));
                end
            end
            a(i) = a(i)*f(i);
        end
    end
    
    for i = 1:n
        y = y + a(i);
    end
    
end

