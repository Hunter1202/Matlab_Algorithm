syms t;
x=15*sin((pi/2)*t+pi/3); 
v=diff(x);
a=diff(v);
figure(1);
fplot(x,[0 15],'b') ;
hold on;
fplot(v,[0 15],'r');
fplot(a,[0 15],'m');
hold off;
axis([0 15 -50 50]);
legend('x(t)','v(t)','a(t)');shg
%Dao ham so
xt=inline(vectorize(x),'t');
t=linspace(0,15,200);
dt=1e-3;
for k=1:length(t);
    vt(k)=(xt(t(k)+dt)-xt(t(k)))/dt;
    at(k)=(xt(t(k)+dt)-2*xt(t(k))+xt(t(k)-dt))/(dt^2);
end
figure(2);
fplot(v,[0 15],'r');
hold on;
plot(t,vt,'b');
figure(3);
fplot(a,[0 15],'b');
hold on;
plot(t,at,'k');
figure(4);
fplot(x,[0 15],'b');
hold on;
plot(t,vt,'b');
plot(t,at,'k');
hold off;