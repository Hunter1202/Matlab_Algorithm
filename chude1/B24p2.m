% tinh sin(x), arctan(x), ln(x+1) theo khai trien taylor
% sinx
clc; close all; clear all; 
tol=1e-12; % Sai so
kx=1;akx=1;fsin=0;
x=pi/4;
while abs(akx)>tol
 akx=(((-1).^(kx-1)).*(x.^(2*kx - 1))./factorial(2*kx - 1));
 fsin=fsin+akx;
 kx=kx+1;
end;
fprintf('fsin = %.4f\n', fsin);
fprintf('sin(x) = %.4f\n', sin(x));

% arctan(x)
tol=1e-12; % Sai so
kx=1;akx=1;arctan=0;
x=pi/4;
while abs(akx)>tol
 akx=(((-1).^(kx-1)).*(x.^(2*kx - 1))./(2*kx - 1));
 arctan=arctan+akx;
 kx=kx+1;
end;
fprintf('arctan = %.4f\n', arctan);

% ln(x + 1)
ak1 = 1;k1 = 1;ln1 = 0;
x = pi/4;
while abs(ak1)> tol
 ak1=(((-1)^(k1-1)).*((x.^(k1))/k1));
 ln1 = ln1 + ak1;
 k1=k1+1;
end;
fprintf('ln(x+1) = %.4f\n', ln1);

% sinh(x)
tol=1e-12; % Sai so
k2=1;ak2=1;fsinh=0;
x=pi/4;
while abs(ak2)>tol
 ak2=(x.^(2*k2 - 1))./factorial(2*k2 - 1);
 fsinh=fsinh+ak2;
 k2=k2+1;
end;
fprintf('fsinh = %.4f\n', fsinh);
fprintf('sinh(x) = %.4f\n', sinh(x));

% cosh(x)
tol=1e-12; % Sai so
k3=0;ak3=1;fcosh=0;
x=pi/4;
while abs(ak3)>tol
 ak3=(x.^(2*k3))./factorial(2*k3);
 fcosh=fcosh+ak3;
 k3=k3+1;
end;
fprintf('fcosh = %.4f\n', fcosh);
fprintf('cosh(x) = %.4f\n', cosh(x));

% exp(x)
tol=1e-12; % Sai so
k3=0;ak3=1;e=0;
x=pi/4;
while abs(ak3)>tol
 ak3=(x.^(k3))./factorial(k3);
 e=e+ak3;
 k3=k3+1;
end;
fprintf('e(x) = %.4f\n', e);
fprintf('e(x) = %.4f\n', exp(x));

