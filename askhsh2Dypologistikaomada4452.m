%MATLAB
clc;
syms z(t);
Dz = diff(z);
ode = diff(z,t,2)+(14.45*diff(z,t))+(5*z) == 111.3;
cond1 = z(0) == 0;
cond2 = Dz(0) == 0;
conds = [cond1 cond2];
zSol(t) = dsolve(ode,conds);
t=0:1:30;
%tspan = [0 30];
%t = linspace(0,30,0.001);
%z = deval(zSol(t),t)
%[t,z] = ode45(zSol(t), t,0);
zSol(t);
m = transpose(zSol(t))
%disp('       t           y1 ')
%disp (t, m)
%anss = [ ; m]
plot(t,zSol(t)) 
