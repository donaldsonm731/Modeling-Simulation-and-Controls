%% Part 1
syms s

% Given in problems
m1 =1;  % kg
m2 = 0; % kg
k1 = 1; % N/m
k2 = 0; % N/m
k3 = 0; % N/m
b1 = 4;  % kg/s
b2 = 1;

% Mass matrix
M = [m1, 0;
     0, m2]
% Damping Matrix
C = [b1 + b2, -b2;
      -b2, b2]
% Stiffness Matrix
K = [k1,  -k1;
     -k1,  k1]
% We take the Laplace Transform of the matrices and call it Z. Z is
% the inverse of the Transfer function. So to get the Transfer function
% you take the inverse of Z. To make it easier to read the determinant is
% factored out.
Z = s^2.*M + s.*C + K
x1 = det(Z)
G1 = inv(Z)*x1


%% Part 2
syms s
% Given in problems
m1 = 1; % kg
m2 = 2; % kg
m3 = 3; % kg
k1 = 1; %N/m
k2 = 2; %N/m
k3 = 3; %N/m
k4 = 4; %N/m
k5 = 5; %N/m
b1 = 1; % kg/s
b2 = 2; % kg/s
b3 = 3; % kg/s
b4 = 4; % kg/s
b5 = 5; % kg/s
% Mass matrix
M = [m1 0 0;
     0  m2 0;
     0 0 m3];
% Damping Matrix 
C = [b1+b2+b5, - b2, -b5;
     -b2,    b2+b3,     -b3;
     -b5,     -b3,     b3 + b4 + b5];
% Stiffness Matrix
K = [k1+k2+k5, - k2, -k5;
     -k2,    k2+k3,     -k3;
     -k5,     -k3,     k3 + k4 + k5];
% We take the Laplace Transform of the matrices and call it Z. Z is
% the inverse of the Transfer function. So to get the Transfer function
% you take the inverse of Z. To make it easier to read the determinant is
% factored out.
Z = s^2.*M + s.*C + K;
x2 = det(Z)
G2 = inv(Z)*x2

%% Part 3
syms s
% Given in problems
m = 1; % kg
k = 1; %N/m
% Mass matrix
M = [m 0 0 0 0;
     0 m 0 0 0;
     0 0 m 0 0;
     0 0 0 m 0;
     0 0 0 0 m];
% Damping Matrix
C = zeros(5);
% Stiffness Matrix
K = [3*k -k  -k   0  0;
     -k  3*k -k  -k  0;
     -k  -k  4*k -k  -k;
      0  -k  -k  3*k -k;
      0   0  -k  -k  3*k] ;
% We take the Laplace Transform of the matrices and call it Z. Z is
% the inverse of the Transfer function. So to get the Transfer function
% you take the inverse of Z. To make it easier to read the determinant is
% factored out.
Z = s^2.*M + s.*C + K;
x3 = det(Z)
G3 = inv(Z)*x3


