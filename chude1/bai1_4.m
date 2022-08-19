% Newton-Raphson Method
clc;clear all;close all;
syms x;  y=exp(-x)-sin(x)^2-0.5; dy=diff(y,'x');
a=0; b=3;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
df=inline(vectorize(dy),'x');
tol=1e-9;
x0=2;
x1=x0-f(x0)/df(x0);
k=1;
while abs(f(x1))>tol
x0=x1;
x1=x0-f(x0)/df(x0);
k=k+1;
end
fprintf('Nghiem x = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);

fx=@(x) exp(-x)-sin(x)^2-0.5;ezplot(fx,[0 3]);shg
% Cuc tieu
[x0 y0]=ginput;
[xmin fxmin]=fminsearch(fx,x0);
% Cuc dai
fx=@(x) exp(-x)-sin(x)^2-0.5;ezplot(fx,[0 3]);shg
[x0 y0]=ginput;
[xmax fxmax]=fminsearch(fx,x0);
xmax, -fxmax