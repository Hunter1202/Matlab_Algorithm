function [x1,k] = tieptuyen(f,x0,tol)
    df = diff(f);
    f = inline(vectorize(f),'x');
    df = inline(vectorize(df),'x');
    x1=x0-f(x0)/df(x0);
    k=1;
while abs(f(x1))>tol
    x0=x1;
    x1=x0-f(x0)/df(x0);
    k=k+1;
end
end


