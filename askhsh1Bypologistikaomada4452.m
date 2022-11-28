%AM 4452 
clear;
Fz=14.262;
Tz=0;
Cz=2.1096;
Cy=5.8904;
t=030;
M=1;
Iz=0.08;
g=9.81;
h=0.001;
y1(1)=z1(1)=0;
y2(1)=z2(1)=0;
Y1(1)=Z1(1)=0;
Y2(1)=Z2(1)=0;


for t=1:30;
  %tmhma 1
  y2(t+1)=y2(t)+(h*((Tz-Cy*abs(y2(t))*y2(t))/Iz));
  y1(t+1)=y1(t)+(h*y2(t));
  %tmhma 2
  z2(t+1)=z2(t)+(h*((Fz-(g*M)-(Cz*abs(z2(t))*z2(t)))/M));
  z1(t+1)=z1(t)+(h*z2(t));
endfor

%tropopoihmeni exiswsh tou euler

 
for t=1:30;
  %tmhma exiswshs2
  Y2(t+1)=Y2(t)+(h*(((Tz-Cy*(abs(Tz-Cy*(abs(Y2(t)))*Y2(t))/Iz))*((Tz-Cy*(abs(Y2(t)))*Y2(t))/Iz))/Iz));
  Y1(t+1)=Y1(t)+(h*(Y2(t)+(h/2)*((Tz-Cy-abs(Y2(t))-Y2(t))/Iz)));
  %1 tmhma
  Z2(t+1)=Z2(t)+(h*((Fz-(g*M)-Cz*(abs((Fz-(g*M)-(Cz*abs(Z2(t))*Z2(t)))/M))*((Fz-(g*M)-Cz*abs(Z2(t))*Z2(t))/M))/M));
  Z1(t+1)=Z1(t)+(h*(Z2(t)+(h/2)*((Fz-(g*M)-(Cz*abs(Z2(t)))*Z2(t))/M)));
endfor

figure(1);
subplot(3,2,1);plot(y2);ylabel('y2');xlabel('t');title('Lush Euler1');
subplot(3,2,2);plot(y1);ylabel('y1');xlabel('t');title('Lush Euler2');
subplot(3,2,3);plot(z2);ylabel('z2');xlabel('t');title('Lush Euler3');
subplot(3,2,4);plot(z1);ylabel('z1');xlabel('t');title('Lush Euler4');

figure(2);
subplot(3,2,1);plot(Y2);ylabel('Y2');xlabel('t');title('Lush tropopoihmenou Euler1');
subplot(3,2,2);plot(Y1);ylabel('Y1');xlabel('t');title('Lush tropopoihmenou Euler2');
subplot(3,2,3);plot(Z2);ylabel('Z2');xlabel('t');title('Lush tropopoihmenou Euler3');
subplot(3,2,4);plot(Z1);ylabel('Z1');xlabel('t');title('Lush tropopoihmenou Euler4');

%deftero meros%

%gia Fz,Tz=9.81,Tz=-0.4452;%
%Lysi exiswshs tou euler%
clear;
Fz=9.81;
Tz=-0.4452;
Cz=2.1096;
Cy=5.8904;
M=1;
Iz=0.08;
g=9.81;
h=0.001;
t=130;
y1(1)=z1(1)=0;
y2(1)=z2(1)=0;
Y1(1)=Z1(1)=0;
Y2(1)=Z2(1)=0;

for t=1:30;
  %2o tmhma
  y2(t+1)=y2(t)+(h*((Tz-Cy*abs(y2(t))*y2(t))/Iz));
  y1(t+1)=y1(t)+(h*y2(t));
  %epomenh exiswsh
  z2(t+1)=z2(t)+(h*((Fz-(g*M)-(Cz*abs(z2(t))*z2(t)))/M));
  z1(t+1)=z1(t)+(h*z2(t));
endfor

%Lysi tropopoihmenou euler%

 
for t=1:30;
  %defterh exiswsh
  Y2(t+1)=Y2(t)+(h*(((Tz-Cy*(abs(Tz-Cy*(abs(Y2(t)))*Y2(t))/Iz))*((Tz-Cy*(abs(Y2(t)))*Y2(t))/Iz))/Iz));
  Y1(t+1)=Y1(t)+(h*(Y2(t)+(h/2)*((Tz-Cy-abs(Y2(t))-Y2(t))/Iz)));
  %1h exiswsh
  Z2(t+1)=Z2(t)+(h*((Fz-(g*M)-Cz*(abs((Fz-(g*M)-(Cz*abs(Z2(t))*Z2(t)))/M))*((Fz-(g*M)-Cz*abs(Z2(t))*Z2(t))/M))/M));
  Z1(t+1)=Z1(t)+(h*(Z2(t)+(h/2)*((Fz-(g*M)-(Cz*abs(Z2(t)))*Z2(t))/M)));
endfor

figure(3);
subplot(3,2,1);plot(y2);ylabel('y2');xlabel('t');title('Lush  Euler1');
subplot(3,2,2);plot(y1);ylabel('y1');xlabel('t');title('Lush Euler2');
subplot(3,2,3);plot(z2);ylabel('z2');xlabel('t');title('Lush Euler3');
subplot(3,2,4);plot(z1);ylabel('z1');xlabel('t');title('Lush Euler4');

figure(4);
subplot(3,2,1);plot(Y2);ylabel('Y2');xlabel('t');title('Lush Euler1');
subplot(3,2,2);plot(Y1);ylabel('Y1');xlabel('t');title('Lush Euler2');
subplot(3,2,3);plot(Z2);ylabel('Z2');xlabel('t');title('Lush Euler3');
subplot(3,2,4);plot(Z1);ylabel('Z1');xlabel('t');title('Lush Euler4');
figure(5);
clear;