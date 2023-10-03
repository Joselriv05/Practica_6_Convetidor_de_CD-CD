%-----Función ode45 que resuslve numericamente el sistema------%
[t,x]=ode45(@CD_CD, [0 0.01], [0 0]);
%Graficamos nuestro sistemas de ecuaciaones
% x y t son parametros que retorna la función que creamos
%Figura 1 - Coriente del inductor
figure(1)
plot(t,x(:,1), 'b');
grid on
title("Corriente de la inductancia");
xlabel("Tiempo");
ylabel("Amperaje");
figure(2)
plot(t,x(:,2), 'r');
grid on
title("Voltaje del capacitor");
xlabel("Tiempo");
ylabel("Voltaje");