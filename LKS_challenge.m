clear;
clc;
close all;

% Vehicle parameters
v = 15;          % Vehicle speed [m/s]
L = 2.5;         % Wheelbase [m]

% Sine road parameters
A = 2;           % Amplitude [m]
w = 0.05;        % Spatial frequency [rad/m]

% Simulation parameters
Ts = 0.1;        % Sample time [s]
Tsim = 40;       % Simulation time [s]

% reference road
x_ref = 0:0.1:v*Tsim;
y_ref = A*sin(w*x_ref);

% reference heading
dy_dx = A*w*cos(w*x_ref);
psi_ref = atan2(dy_dx,1);

% plot reference road
figure;
plot(x_ref,y_ref,'LineWidth',2);
grid on;
xlabel('x (m)');
ylabel('y_{ref} (m)');
title('Reference Sine Road');