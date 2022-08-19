function [A]= khugauss(A)
A=[2 -1 1;3 1 -1;1 -3 2];
m=size(A,1);
n=size(A,2);
% Elimination
for k=1:min(n,m-1)  
    for i=k+1:m
        if (A(k,k)==0)&&(A(i,k)~=0)
            for j=k:n
                t=A(k,j);
                A(k,j)= A(i,j);
                A(i,j)=t;
            end 
        end 
        p=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
A
%jordan
for i =1:m
    h = A(i,i);
    for j=i:n
        A(i,j)= A(i,j)/h;
    end
end 
A
for i=min(m,n):-1:2
    for k=i-1:-1:1
        x = A(k,i)/A(i,i);
        for j=n:-1:1
            A(k,j)=A(k,j)-x*A(i,j);
        end
    end
end

