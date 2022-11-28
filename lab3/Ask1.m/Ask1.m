clear;
close all;
#a
n = [-15:0.2:15];
c = (sin((pi.*n)./2)./(pi.*n));
T = 2 ;
figure(1);
stem(n,c);
xlabel('n');
ylabel('Cn');
ylim([-1,1]);
#b
t=-3:0.01:3;
X=0;
for k=1:500;
  X = X + 2*(1 ./(pi*k)).*sin(pi*k/2).*exp(j.*pi.*k.*t);
endfor
x0=1/2;
X=X+x0;
figure(2);
plot(t,X);