clc;
clear all;
close all;

fm = 10; % Message signal frequency
fc = 15; % Carrier signal frequency
ms = 35; % Modulation index 
t = 0:0.0001:1; % Time vector

% Message signal (modulating signal)
mt = cos(2 * pi * fm * t);

% Carrier signal
ct = cos(2 * pi * fc * t);

% Phase modulated signal
pt = cos(2 * pi * fc * t + ms * sin(2 * pi * fm * t));

% Plot the message signal
subplot(3,1,1);
plot(t, mt);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the carrier signal
subplot(3,1,2);
plot(t, ct);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the phase modulated signal
subplot(3,1,3);
plot(t, pt);
title('Phase Modulation Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
