clc;
clear all;
fc=10;
fm=1;
mod_index=6;

t=0:0.001:3;

mt=cos (2*pi*fm*t);
ct=cos (2*pi*fc*t);

st= cos (2*pi*fc*t + mod_index *sin (2*pi*fm*t));

subplot(3,1,1)
plot (t,mt);
xlabel('Time');
ylabel('Amplitude');
title ('Message Signal');
grid on

subplot(3,1,2)
plot (t,ct);
xlabel('Time');
ylabel('Amplitude');
title ('Carrier Signal');
grid on


subplot(3,1,3)
plot (t,st);
xlabel('Time');
ylabel('Amplitude');
title ('Frequency Modulation Signal',num2str (mod_index));
grid on


