function [] = plf(X,Y,n)
for i=1 :n - 1
    pp=polyfit(X,Y,i+1)
    xx=linspace(min(X)-0.5,max(X)+0.5,200);
    yy=polyval(pp,xx);
    figure(i);
    plot(xx,yy);
    %fplot(pp,[a b]);
    hold on
    plot(X,Y,'r*');
    hold off;
end

