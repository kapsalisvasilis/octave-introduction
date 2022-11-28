##Euler-1G 
Kpz=5;
Kdz=10.548;
Kpy=5;
Kdy=20;
Cy=5;
Cz=3.8904;
zdes=22.26;
ydes=1.484;
M=1;
t=0:30;
h=0.001;
N=31;
z1 = z(1)= 4.452;
y1 = y(1)=0;
figure(1);
for n=1:N-1
  z(n+1)=z(n)+h*z(n);
  y(n+1) = y(n) + h*y1(n);
  
  y1(n+1)=y1(n) + h*(Kpy*(ydes-y(n))-Kdy*y1(n)-Cy*abs(y1(n))*y1(n))/0.08;
  z1(n+1)=z1(n)+h*(Kpz*(zdes-z(n))-Kdz*(z1(n))-Cz*abs(z1(n))*z1(n))/M;   
end
subplot(221)
plot(t,z1)
xlabel t
ylabel z
subplot(222)
plot(t,y1)
xlabel t
ylabel y
##TrEuler-1G
Kpz=5;
Kdz=10.548;
Kpy=5;
Kdy=20;
Cy=5;
Cz=3.8904;
zdes=22.26;
ydes=1.484;
M=1;
t=0:30;
h=0.001;
N=31;
z(1)= 4.452;
y(1)=0;
v =z1(n)+(h/2)*(Kpz*(zdes-z(n))-Kdz*(z1(n))-Cz*abs(z1(n))*z1(n))/M;
r =y1(n)+(h/2)*(Kpy(ydes-y(n))-Kdy*y1(n)-Cy*abs(y1(n))*y1(n))/0.08;
figure(2);
for n=1:N-1
  z(n+1)=z(n)+h*(z1(n)+(h/2)*(Kpz*(zdes-z(n))-Kdz*(z1(n))-Cz*abs(z1(n))*z1(n))/M);
  y(n+1) = y(n) + h*(Kpy(ydes-y(n))-Kdy*y1(n)-Cy*abs(y1(n))*y1(n))/0.08;
  
  y1(n+1)=y1(n) + h*(Kpy*(ydes-y(n))-Kdy*r-Cy*abs(r)*r)/0.08;
  z1(n+1)=z1(n)+h*(Kpz*(zdes-z(n))-Kdz*v-Cz*abs(v)*v)/M;
end
subplot(221)
plot(t,z1)
xlabel t
ylabel z

subplot(222)
plot(t,y1)
xlabel t
ylabel y
