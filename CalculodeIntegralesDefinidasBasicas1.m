% Octave Script
% Title       : Calculo de Integrales Definidas Basicas
% Description : Distancia total recorrida
%               Una particula comienza desde el origen. su velocidad, en millas por horas biene dada por:
%                                                   v(t)=?t+t
%               Donde t es el numero de horas desde que la particula dejo el origen. ¿Que distancia recorre 
%               aparticula durante la segunda, tercera y cuarta horas (de t=1 a t=4)
% Author      : Erika Amairani Leonardo Arce
% Date        : 03 de Junio 2021
% Version     : 1
% Notes       : funcion v(t)=?t+t

clear
clc
fun=@(t) sqrt(t)+t;
integral=quad(fun,2,4) 

t=2:0.1:4;
v=sqrt(t)+t;
% Dibujar grafica
area(t,v)
grid on; 
% Titulo
title("v(t)=?t^2+t");
% Etiqueta para x
xlabel("t");
% Etiqueta para y
ylabel("v");
