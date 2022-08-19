%giai ptvp
%tim nghiem giai tich bang lenh dsolve
syms y
yt=dsolve('Dy=y*sin(x)','y(0)=5','x')
%nghiem giai tich
fplot(yt,[0 10]);
hold on
%pp euler
f=@(x,y)(y.*sin(x))
h=0.1;
x=0:h:10;
y(1)=5;
for k=1:length(x)-1
    y(k+1)=y(k)+f(x(k),y(k))*h;
end
plot(x,y,'r');
hold off

