%bai4.1a
syms x;y=cos(x)/(x^2 +1);
f=inline(vectorize(y),'x');
a=0;b=10;

x=a;S=0;
N=5000;dx=(b-a)/N;
for k=1:N
    S=S+dx*(f(x)+f(x+dx))/2;
    x=x+dx;
end
S
% I1=int(y,'x',a,b)
% f=inline(vectorize(y),'x');
% I2=quad(f,a,b)