function [xx,yy] = spline_3_b(X,Y)
X= input('nhap x: ')
Y= input('nhap y: ');
sp=spline(X,Y);
sp.breaks
sp.coefs
xx=linspace(1,85,200);
yy=fnval(sp,xx);
figure(1);
%fnplt(sp,[1,85])
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;
end

