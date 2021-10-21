function F2 = pierna2(q2,x3_2,y3_2)

theta1_2 = q2(1);
theta2_2 = q2(2);

x0_2 = 0.321;
y0_2 = 0.27;

L1_2 = 0.1;
L2_2 = 0.125;
phi2 = 7*pi/6;

F2(1)= x0_2+L1_2*cos(phi2+theta1_2)+L2_2*cos(phi2+theta1_1+theta2_2)-x3_2;
F2(2)= y0_2+L1_2*sin(phi2+theta1_2)+L2_2*sin(phi2+theta1_1+theta2_2)-y3_2;

end