% Tich phan trong Matlab
syms x;y=cos(x)/(x^2 +1);
a=0;b=10;
I1=int(y,'x',a,b)
f=inline(vectorize(y),'x');
I2=quad(f,a,b)