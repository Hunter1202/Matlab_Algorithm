function [c,k] = daycung(f,a,b,tol)
c=((a .* f(b)) - (b .* f(a))) / (f(b) - f(a)); k=1;
while abs(f(c))>tol
if f(c)*f(a)>0
a=c;
else
b=c;
end
c=((a * f(b)) - (b * f(a))) / (f(b) - f(a));
k=k+1;
end
end

