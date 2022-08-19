% Phuong phap Heun
clc; clear all; close all;
yt=dsolve('D1y=y*sin(x)','y(0)=5','x')
fplot(yt,[0 10]); hold on
f=@(x,y) (y.*sin(x))
h=0.4; x=0:h:10;
y=5;
for k=1:length(x)-1
yk=y(k)+h*f(x(k),y(k));
y(k+1)=y(k)+h*(f(x(k),y(k))+f(x(k+1),yk))/2
end
plot(x,y,'m');