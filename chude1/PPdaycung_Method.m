% Phuong phap day cung
clc;clear all;close all;
syms x; y=exp(-x) - sin(x); a=0; b=1;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
tol=1e-9;
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
fprintf('Nghiem x = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);