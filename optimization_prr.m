%% Forward Jacobian and Inverse Jacobian matrices
syms beta1 beta2 beta3 r phi
b1 = [cos(beta1); sin(beta1)];
b2 = [cos(beta2); sin(beta2)];
b3 = [cos(beta3); sin(beta3)];

e1 = [cos(phi-(5*pi)/6);sin(phi-(5*pi)/6)];
e2 = [cos(phi-pi/6);sin(phi-pi/6)];
e3 = [cos(phi+pi/2);sin(phi+pi/2)];

a1 = [1;0];
a2 = [-1/2;sqrt(3)/2];
a3 = [-1/2;-sqrt(3)/2];

E = [0 -1;1 0];
% Forward Jacobian 
A = [b1' r*b1'*E*e1; b2' r*b2'*E*e2; b3' r*b3'*E*e3];
% Inverse Jacobian 
B = [b1'*a1 0 0 ; 0 b2'*a2 0; 0 0 b3'*a3];
% Jacobian 
J = A\B;

%% condition number 
J_1 = J'*J;
J_2 = inv(J'*J);
kappa = sqrt(max(eig(J_1))*max(eig(J_2)));

%% optimization 
x0 = [(200*sqrt(3)), 20, 65, 5];
[x,fval] = fmincon{'fun1',x0,[-1/2 1 1 0],0,[],[]};
