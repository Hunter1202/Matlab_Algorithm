function [X, lambda] = Bai_3_b(A,w)
A=[2 -12;1 -5];X=[0;1];
N=18;
for k=1:N
    w=inv(A)*X;
    X=w/norm(w);
end
X
lambda=(X'*A*X)/(X'*X)
lambda2=(X'*X)/(X'*inv(A)*X)
end

