clc;
clear all;
close all;

% Parameters
fm = 10;          % Message signal frequency in Hz
fc = 100;         % Carrier signal frequency in Hz
mod_index = 0.7;  % Modulation index
t = 0:0.0001:1;   % Time vector

% Message signal (modulating signal)
mt = cos(2 * pi * fm * t);

% Carrier signal
ct = cos(2 * pi * fc * t);

% Amplitude Modulated (AM) signal
am_signal = (1 + mod_index * mt) .* ct;

% Envelope detection (simple absolute value method)
demod_signal = abs(hilbert(am_signal)) - mean(abs(hilbert(am_signal))); % Subtract the DC component

% Plot the message signal
subplot(4,1,1);
plot(t, mt);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the carrier signal
subplot(4,1,2);
plot(t, ct);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the amplitude modulated signal
subplot(4,1,3);
plot(t, am_signal);
title('Amplitude Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the demodulated signal
subplot(4,1,4);
plot(t, demod_signal);
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
