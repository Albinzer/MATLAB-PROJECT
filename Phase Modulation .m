clc;
clear all;
close all;

fm=10;
fc=15;
ms=35;
t=0:0.0001:1;

title("Phase Modulation");
subplot(3,1,1);
plot("t,f");
xlabel('Amplitude');
ylabel('Time');
