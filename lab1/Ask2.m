x=0:.01:(3*pi/2);
y=sin(1.8*pi*x);
figure(1);
plot(x,y);
xlabel("t(sec)");
ylabel("y");

a=[0:45];
b=cos((1.7*pi*a)/10);
figure(2);
stem(a,b);
xlabel("t(sec)");
ylabel("y");

syms t ;

u(t) = heaviside(t);
z(t) = exp(-t) * u(t);
y1(t) = z(t-1);
y2(t) = z(t+1);

figure(3);
subplot(3,1,1);ezplot(z(t)); axis([-4 4 0 1]);
subplot(3,1,2);ezplot(y1(t)); axis([-4 4 0 1]);
subplot(3,1,3);ezplot(y2(t)); axis([-4 4 0 1]);
