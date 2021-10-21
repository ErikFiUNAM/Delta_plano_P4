%%%%%Programa para cálcular la configuración del robot paralelo

%%%%%%Solución para la primera pierna%%%%%%%%%

waprox1 = [-pi/2 3*pi/2]; %Vector de proximación de la cofiguración

for i=1:length(t_sim)
    
  q1_cal(i,:) = fsolve(@(q1) pierna1(q1,x3_1(i),y3_1(i)),waprox1); %planteamiento del cálculo de la solución de la postura
    
   theta1_1cal(i) =  q1_cal(i,1); %Solición el ángulo Theta 1_1
   theta2_1cal(i) =  q1_cal(i,2); %Solición el ángulo Theta 2_1
   
 
   waprox1 = [theta1_1cal(i) theta2_1cal]; %Vector de aproximación
    
end


%%%%%%Solución para la segunda pierna%%%%%%%%%

waprox2 = [-pi/2 3*pi/2]; %Vector de proximación de la cofiguración

for i=1:length(t_sim)
    
  q2_cal(i,:) = fsolve(@(q2) pierna2(q2,x3_2(i),y3_2(i)),waprox2); %planteamiento del cálculo de la solución de la postura
    
   theta1_2cal(i) =  q2_cal(i,1); %Solición el ángulo Theta 1_2
   theta2_2cal(i) =  q2_cal(i,2); %Solición el ángulo Theta 2_2
   
 
   waprox2 = [theta1_2cal(i) theta2_2cal]; %Vector de aproximación
    
end


%%%%%%Solución para la tercera pierna%%%%%%%%%

waprox3 = [-pi/2 3*pi/2]; %Vector de proximación de la cofiguración

for i=1:length(t_sim)
    
  q3_cal(i,:) = fsolve(@(q3) pierna3(q3,x3_3(i),y3_3(i)),waprox3); %planteamiento del cálculo de la solución de la postura
    
   theta1_3cal(i) =  q3_cal(i,1); %Solición el ángulo Theta 1_3
   theta2_3cal(i) =  q3_cal(i,2); %Solición el ángulo Theta 2_3
   
   waprox3 = [theta1_3cal(i) theta2_3cal]; %Vector de aproximación
    
end


