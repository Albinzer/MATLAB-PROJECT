clc;
clear all;
close all;

% Parameters
fm = 10;          % Message signal frequency in Hz
fc = 100;         % Carrier signal frequency in Hz
mod_index = 5;    % Modulation index
t = 0:0.0001:1;   % Time vector

% Message signal (modulating signal)
mt = cos(2 * pi * fm * t);

% Carrier signal
ct = cos(2 * pi * fc * t);

% Frequency Modulated (FM) signal
st = cos(2 * pi * fc * t + mod_index * sin(2 * pi * fm * t));

% Frequency demodulation
demod_signal = [0 diff(unwrap(angle(hilbert(st))))] / (2 * pi * 0.0001); % Differentiate phase and scale

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

% Plot the frequency modulated signal
subplot(4,1,3);
plot(t, st);
title('Frequency Modulated Signal');
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
