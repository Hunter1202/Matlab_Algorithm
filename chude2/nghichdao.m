clc,clear all
A=[5 1 1 5;1 4 1 4;1 1 3 3]
A2=inv(A)
[m,n]=size(A);
A=[A,eye(m)];
A
[m,n]=size(A);
[A]=Gauss_Jordan(A)
for i=1:m
        h=A(1,1);
       for j=1:2*m
             A(i,j)=A(i,j)/h
       end
end
A
A1=A(:,m+1:end)



