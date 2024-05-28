clc;
clear all;
m_index = input ('enter the value of mod index: ');
t=0:0.001:3;

Am =1;
Ac = Am / m_index;


fm= 1;
fc=25;

mt = cos (2*pi*fm*t );
ct =cos (2*pi*fc*t);

am= (1+m_index*mt) .* (Ac*ct);

subplot(3,1,1)
plot(t,mt); 
xlabel =('Time');
ylabel = ('Message Signal');
title ('Modulating Signal')
grid on 


subplot(3,1,2);
plot(t,ct);
xlabel =('Time');
ylabel = ('Carrier Signal');
title (' Carrier Signal');
grid on 

subplot(3,1,3);
plot(t,am);
xlabel =('Time');
ylabel = ('Amplitude Signal');
title (' Amplitude  Signal');
grid on 
