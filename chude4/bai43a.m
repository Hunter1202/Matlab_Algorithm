%bai43a
syms x;y=cos(x)/(x^2 +1);
f=inline(vectorize(y),'x');
a=0;b=10;
N=5000;
x=a+(b-a)*rand(1,N);
S=0;
for k=1:N
    S=S+f(x(k));
end
format long;
S*(b-a)/N
format short;