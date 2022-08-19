a=input('Nhap a= ');
b=input('Nhap b= ');
c=input('Nhap c= ');
if (a+b>c) && (a+c>b) && (b+c>a)
    disp('day la hinh tam giac');
p = (a+b+c)/2;
S = sqrt(p*(p-a)*(p-b)*(p-c));
disp('Dien tich hinh tam giac la: ');
disp(S);
else
    disp('khong phai hinh tam giac !');
end;