% Seismic Analysis Sample for Thesis
% Author: Melina Arvan
% Date: October 2025
% Description: Simple seismic displacement calculation for a healthcare structure

% Parameters (based on resilience-based seismic design)
mass = 1000;          % Mass of structure (kg)
stiffness = 5000;     % Stiffness of structure (N/m)
damping_ratio = 0.05; % Damping ratio (5%)
gravity = 9.81;       % Acceleration due to gravity (m/s^2)
peak_ground_acc = 0.3; % Peak ground acceleration (g, from seismic design code)

% Natural frequency and period
omega_n = sqrt(stiffness / mass); % Natural frequency (rad/s)
T_n = 2 * pi / omega_n;           % Natural period (s)
disp('Natural Period = ' + string(T_n) + ' seconds');

% Seismic force calculation (F = m * a)
seismic_force = mass * peak_ground_acc * gravity; % Force (N)
disp('Seismic Force = ' + string(seismic_force) + ' N');

% Simple displacement response (assuming undamped SDOF system)
displacement = seismic_force / stiffness; % Static displacement (m)
disp('Maximum Displacement = ' + string(displacement) + ' m');

% Plotting displacement over time (simplified harmonic response)
time = 0:0.01:2; % Time vector (0 to 2 seconds)
response = displacement * sin(omega_n * time); % Harmonic response
figure;
plot(time, response, 'b-', 'LineWidth', 2);
title('Seismic Displacement Response');
xlabel('Time (s)');
ylabel('Displacement (m)');
grid on;
disp('Graph plotted - check figure window');
