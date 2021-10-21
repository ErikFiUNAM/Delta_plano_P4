%%%%%Trayectoria y la ubicacion de los sistemas {3i}


%Parametros de circulo

xc = 0.2; %m
yc = 0.2;   %m
rcir =  0.04;   %M

thetac_in = 0;
thetac_fin = 2*pi;

t_total = 10;
t_incr = 0.1;

t_sim = 0:t_incr:t_total;

thetac = thetac_in+((10/t_total^3)*t_sim.^3-(15/t_total^4)*t_sim.^4+(6/t_total^5)*t_sim.^5)*(thetac_fin-thetac_in);

xp = xc+rcir*cos(thetac);
yp = yc+rcir*sin(thetac);

figure
plot(xp,yp)


%%%%Ubicación del sistema 3_1
%%Orientación fija
theta_0P = 0;
rmovil = 0.044; %m

x3_1 = xp+rmovil*cos(theta_0P-pi/2);
y3_1 = yp+rmovil*sin(theta_0P-pi/2);


%%%%Ubicación del sistema 3_2
%%Orientación fija

x3_2 = xp+rmovil*cos(theta_0P+pi/6);
y3_2 = yp+rmovil*sin(theta_0P+pi/6);

%%%%Ubicación del sistema 3_2
%%Orientación fija

x3_3 = xp+rmovil*cos(theta_0P+5*pi/6);
y3_3 = yp+rmovil*sin(theta_0P+5*pi/6);

figure
plot(xp,yp,'-',x3_1,y3_1,'--',x3_2,y3_2,'--',x3_3,y3_3,'--')
title('Simulación Delta')
xlabel('x')
ylabel('y')
legend('Trayectoria {P}','Trayectoria {3.1}','Trayectoria {3.2}','Trayectoria {3.3}')
grid on



