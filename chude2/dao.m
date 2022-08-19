function [x] = dao(A)
A=fix(1+10*rand(3));
A2=inv(A)
[m,n]=size(A);
A=[A,eye(m)];
A
[m,n]=size(A);
[A]= Gauss_Jordan(A)
for i=1:m
    h=A(1,1);
    for j=1:2*m
        A(i,j)=A(i,j)/h;
    end
end
A
for i=1:m
    for j=1:m
        A1(i,j)=A(i,j+m);
    end
end
A1      
end

