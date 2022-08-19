syms x;
syms y;
I2=(y^3)*(exp(y))/(x^2+y^2);
f=inline(vectorize(I2),'x','y');
a=0;b=1;
c=-4;d=2;
IR=dblquad(f,a,b,c,d)
N=500000000000;
x=a+(b-a)*rand(1,N)
y=c+(d-c)*rand(1,N)
S=0;
for k=1:N
    S=S+f(x(k));
end
format long;
S*(b-a)/N
format short;