% Title       : Calculo de Integrales Definidas Basicas
% Description : Distancia de Frenado
%               El conductor de un vehiculo que viaja a 40 millas/h (58.67 pies/seg), aplica los frenos suavemente al pricipio
%               luego con mas fuerza, deteniendose por completo despues de 7 segundos. La velocidad en funcion del tiemppo se
%               modelo mediante la fincion:
%                                                   v(t)=-1.197t.^2+58.67
%               Donde v esta en pies por segundo, t en segundos y 0 ≤ t ≤ 7.
%               ¿Que distancia (en mts) recorrio el vehiculo mientras el conductor estaba frenando?
% Author      : Erika Amairani Leonardo Arce
% Date        : 03 de Junio 2021
% Version     : 1
% Notes       : funcion v(t)=-1.197t.^2+58.67

clear
clc
fun=@(t) -1.197*(t.^2)+58.67;
integral=quad(fun,0,7) 
% ¿Que distancia (en mts) recorrio el vehiculo mientras el conductor estaba frenando?
pam=0.3048;
dfrenado=integral*pam;

t=0:0.1:7;
v=-1.197*(t.^2)+58.67;
% Dibujar grafica
area(t,v)
grid on; 
% Titulo
title("v(t)=-1.197t.^2+58.67");
% Etiqueta para x
xlabel("t");
% Etiqueta para y
ylabel("v");
