function [x e] = bisection(f,a,b,n)
    c = f(a); d = f(b);
    if c*d > 0.0
        error('Bisection method fails.')
    end
    for i = 1:n
        x = (a + b)/2;
        y = f(x);
        if y == 0.0     
            e = 0;
            break    
        end
        if c*y < 0
            b=x;
        else
            a=x;
        end
    end
e = (b-a)/2;
end