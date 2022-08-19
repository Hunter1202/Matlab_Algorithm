function [x2,k] = cattuyen(f,x0,x1,tol)
    x2=x0 - f(x0) .* ((x1 - x0) / (f(x1) -f(x0)));
    k=1;
while abs(f(x2))>tol
    x0=x2;
    x2=x0 - f(x0) .* ((x1 - x0) / (f(x1) -f(x0))); k=k+1;
end
end

