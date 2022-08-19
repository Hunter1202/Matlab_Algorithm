A = fix(rand(5))
A = khugauss(A);
detA = 1;
m=size(A,1);
n=size(A,2);
for i=1:n
    detA = A(i,i)*detA;
end;
detA