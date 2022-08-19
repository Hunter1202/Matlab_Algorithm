% Kiem tra SNT
clc;clear all; close all;
count = 0;
n = input('Nhap so nguyen duong n: ');
for i=2:(n/2)
    if mod(n,i) == 0
        count = count + 1;
    end;
end;

if count == 0
    fprintf('%d la so nguyen to\n', n);
else 
    fprintf('%d khong la so nguyen to\n',n);
end;