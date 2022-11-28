#ASK 2-1
clear;
clear all
syms W t;
u(W) = heaviside(W);
h1(W)= u(W+20);
h2(W)= u(W-20);
H(W)=P(W)=h1(W)-h2(W);
h(W)= simplify(ifourier(H(W)));
figure(1);
ezplot(h);
axis([-3 3 -2 8]);
xlabel("w");
ylabel("H(W)");
saveas(1,'ASK-2-1.jpg');
#ASK 2-2
x1(t)=sin(3*pi*t);
x2(t)=cos(16*pi*t);
x(t)=x1(t)+x2(t);
X=fourier(x(t));
Y=X*H(W);
y=simplify(ifourier(Y));
figure(2);
subplot(4,1,1);ezplot(x1(t));
subplot(4,1,2);ezplot(x2(t));
subplot(4,1,3);ezplot(x(t));
subplot(4,1,4);ezplot(y);
saveas(2, 'ASK2-2.jpg');
