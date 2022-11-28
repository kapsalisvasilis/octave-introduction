clear;
clear all
#ASK1-1
clear;
clear all
t = -400:1:400;
H = 1 ./ (j*t+3);
figure(1);
plot(t,abs(H));
title('absH of (t)');
xlabel('t');
ylabel('abs (H(t)');
saveas(1,'Ask1-1-0.jpg');
figure(2);
plot(t,angle(H));
title('angle of H(t)');
xlabel('t');
ylabel('angle of H(t)');
saveas(2,'Ask1-1-1.jpg');
#ASK1-2
clear;
clear all
t = -400:1:400;
H = (j*t+2) ./ (j*t+3);
figure(3);
plot(t, abs(H));
title('abs of H(t)');
xlabel('t');
ylabel('abs H(t)');
saveas(2,'Ask1-2-1.jpg');
figure(4);
plot(t,angle(H));
title('angle of H(t)');
xlabel('t');
ylabel('angle of H(t)');
saveas(2,'Ask1-2-2.jpg');