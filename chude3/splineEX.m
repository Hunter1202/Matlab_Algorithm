%spline
clc;clear all;close all;
X=[0 13 24 36 40 51 63 74 82 85 ];
% Y=20*rand(1,10);
Y=[0 15 34 49 27 11 19 61 37 0];
sp=spline(X,Y);
sp.breaks
sp.coefs
xx=linspace(1,85,200);
% yy=fnval(sp,xx);
figure(1);
fnplt(sp,[1,85])
% plot(xx,yy);
hold on
plot(X,Y,'sr');hold off;