clc;
% Nhap 2 so nguyen duong tim UCLN, BCNN
% BCNN(a,b) = (a.b)/UCLN(a,b);
n = input('Nhap so nguyen duong n: ')
m = input('Nhap so nguyen duong m: ')

for i=1:m
    if (mod(n,i) == 0) & (mod(m,i)==0) 
        fprintf('UCLN(%.1f,%.1f) = %.1f\n', m,n,i);
        save mydata1 i;
    end;
end;
load mydata1
fprintf('BCNN(%.1f,%.1f) = %.1f\n', m,n,(m*n)/i);