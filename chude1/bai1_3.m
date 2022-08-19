fx=@(x)log10(x)^2-x^2+2*x+3;
ezplot(fx,[1 5]);shg
[x0 y0]=ginput;
[xn fxn]=fsolve(fx,x0)
%cuc tieu
fx=@(x)log10(x)^2-x^2+2*x+3;
[x0 y0]=ginput;
[xmin fxmin]=fminsearch(fx,x0);
%cuc dai
[x0 y0]=ginput;
[xmax fxmax]=fminsearch(fx,x0);
xmax, -fxmax