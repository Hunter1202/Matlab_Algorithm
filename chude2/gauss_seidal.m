function [x,y,k] = gauss_seidal(A,B,tol)
x = zeros(1,size(A,1));
k=0;
d=1;
n=size(A,1);
while d > tol
    x_1 = x;
    for i=1:size(A,1)
        sum = 0
        for j=1:n
            if i ~= j
                sum = sum + A(i,j) * x(j);
            end
        end
        x(i) = (1/A(i,i)) * (B(i) - sum);
    end
    k=k+1;
    y(k,:)=x;
    d = norm(x_1-x);
end

