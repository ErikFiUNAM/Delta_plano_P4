function F1 = pierna1(q,x3_1,y3_1)

theta1_1 = q(1);
theta2_1 = q(2);

x0_1 = 0.2;
y0_1 = 0.1;

L1_1 = 0.1;
L2_1 = 0.125;
phi1 = pi/2;

F1(1)= x0_1+L1_1*cos(phi1+theta1_1)+L2_1*cos(phi1+theta1_1+theta2_1)-x3_1;
F1(2)= y0_1+L1_1*sin(phi1+theta1_1)+L2_1*sin(phi1+theta1_1+theta2_1)-y3_1;


