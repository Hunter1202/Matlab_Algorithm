clear all; close all;clc
x=[0 0.2 0.4 0.6 0.9 1.2 1.4 1.8 2]
y=[0.97 0.69 .57 0.46 0.36 0.31 0.27 0.21 0.19];
figure(1);plot(x,y,'+:')
% Tim gan dung---------------
X=x;Y=1/(a0x+a1);
pp=polyfit(X,Y,2);
b0=pp(1);c0=pp(2);a0=exp(pp(3));
% Chinh xac--------------------
f=inline('A(1)*exp(A(2)*(x.^2)+A(3)*x)','A','x');
A0=[a0 b0 c0];
[An dAn]=lsqcurvefit(f,A0,x,y)
xx=linspace(0,1,100);yy=f(An,xx);
figure(2);
plot(xx,yy);hold on;
plot(x,y,'r*');hold off;