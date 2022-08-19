% Gauss - Elimination
function [A] = phan2_bai1a(x)
% A=[2 -1 1;3 1 -1;1 -3 2];
A
m=size(A,1);
n=size(A,2);
% Elimination
for k=1:min(m-1,n)
    for i=k+1:m
        p=A(i,k)/A(k,k);
           for j=k:n
               A(i,j)=A(i,j)-p*A(k,j);
           end
    end
end
A
% Back substitution
for i=n:-1:1
    S=0;
    for j=i+1:n
        S=S+A(i,j)*x(j);
    end
    x(i,1)=(A(i,n+1)-S)/A(i,i);
end
A,x
end

