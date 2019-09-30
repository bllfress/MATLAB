x=2.5;
b=0.04;
k=3;
n=5;
y=1/9-10^(-4)*exp(k*x)+cos((x^2+6)^1/2)+((x^2+6)^1/2)/0.4*x+sin(3)/(x^2+6)*n
a=[x,b,k,n,y];
i = 1;
while i <= numel(a)
if (a(i) >1)
a(i) = [];
else
i = i+1;
end
end
disp(a(1));%
j=1;
Sr=0;
while j <= numel(a)
Sr=Sr+a(j);
j=j+1;
end
Sr=Sr/numel(a);
a(end+1)=Sr;
disp(a(2));%