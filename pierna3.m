function F3 = pierna3(q3,x3_3,y3_3)

theta1_3 = q3(1);
theta2_3 = q3(2);

x0_3 = 0.2;
y0_3 = 0.1;

L1_3 = 0.1;
L2_3 = 0.125;
phi3 = -pi/6;

F3(1)= x0_3+L1_3*cos(phi3+theta1_3)+L2_3*cos(phi3+theta1_3+theta2_3)-x3_3;
F3(2)= y0_3+L1_3*sin(phi3+theta1_3)+L2_3*sin(phi3+theta1_3+theta2_3)-y3_3;

end