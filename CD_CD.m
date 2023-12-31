%Función del convertidor CD-CD
function dx=CD_CD(t,x)
%-----Definimos nuestro parametros------%
L=2e-3; %Inductancia (H)
C=10e-6; %Capacitancia (F)
R=10; %Resistor (Omhs)
Vin=32; %Voltaje (v)
d=0.381; %Ciclo de trabajo
%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(2,1);
%-----Definición dinamica del sistema (Representanción de estados)-----%
dx(1)=-((1/L)*x(2))+((Vin/L)*d); 
dx(2)=((1/C)*x(1))-((1/(R*C))*x(2));
%------------------------------------------------------------------%