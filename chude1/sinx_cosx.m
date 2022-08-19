% sinx
clc; close all; clear all; 
tol=1e-12; 
kx=1;akx=1;fsin=0;
x=pi/4;
while abs(akx)>tol
 akx=(((-1).^(kx-1)).*(x.^(2*kx - 1))./factorial(2*kx - 1));
 fsin=fsin+akx;
 kx=kx+1;
end;
fprintf('fsin = %.4f\n', fsin);
fprintf('sin(x) = %.4f\n', sin(x));
