x=-2*pi:0.1*pi:2*pi;
f1=sin(x).^2;
f2=sin(x)+x.^2;
f3=sin(x).*x;
plot(x,f1,'DisplayName','sin(x)^2')
hold on
plot(x,f2,'DisplayName','sin(x)+x^2')
hold on
plot(x,f3,'DisplayName','sin(x)*x' )
legend(' sin(x)^2 ',' sin(x)+x^2 ','sin(x)*x')

axis on  



x=[0];
y=[0];
x1=[0];
y1=[0];
n=0;
r=0;
hold off
for m=-10:0.1:10
if (m<=0)
n=n+1;
x(n)=m;
y(n)=(1+x(n)^2/(1+x(n)^2))^1/2;
end;
if(m>0)
r=r+1;
x1(r)=m;
y1(r)=2*abs(cos(x(r)));

end;
end
plot(x,y,'r--');
hold on
plot(x1,y1,'m*-');
legend('y','y1');
xlabel('x');
ylabel('y');
xlim([-10 10]);




hold off
ezplot('(1+(x^2)/(1+x^2))^1/2',[-10 0]);
hold on
ezplot('2*abs(cos(x))',[0 10]);
xlim([-10 10]);
