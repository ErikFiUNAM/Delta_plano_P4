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
