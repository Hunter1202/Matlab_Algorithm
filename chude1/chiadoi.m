function [c,k] = chiadoi(f,a,b,tol)
    c=(a+b)/2; k=1;
    while abs(f(c))>tol
        if f(a)*f(c)>0
        a=c;
    else
        b=c;
    end
        c=(a+b)/2;
        k=k+1;
    end
end

