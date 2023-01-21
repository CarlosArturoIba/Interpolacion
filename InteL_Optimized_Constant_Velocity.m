close all
clc
format long
x = [20 40 60 80 100 120 140 160 180];                               %x Vector de grados de posicion de manibela
cycle = [5.6 11.1 16.7 22.2 27.8 33.3 38.9 44.4 50];                 %cycle vector de cliclos 
Vy = [0.006 0.0038 0.106 0.340 0.910 1.885 3.327 5.878 9.299];       % Vy  Vector minimo Vy
Delta_X_L2 = [0.480 0.950 1.411 1.845 2.237 2.600 2.932 3.232 3.456];
R_L1_L2 = [2.075 2.050 2.025 1.975 1.900 1.825 1.750 1.675 1.575];
R_L3_L2 = [2.613 2.575 2.538 2.463 2.350 2.238 2.125 2.013 1.863];


n=length(x);                                    
grados_de_giro= 55
Delta_X = 20 
Porcentaje_de_ciclo = Lagrange(x,cycle,grados_de_giro)
Min_delta_Cy = Lagrange(x,Vy,grados_de_giro)
DeltaX_L2 = Lagrange(x,Delta_X_L2,grados_de_giro)
L1_L2 = Lagrange(x,R_L1_L2,grados_de_giro)
L3_L2 = Lagrange(x,R_L3_L2,grados_de_giro)

L2 = Delta_X/DeltaX_L2                       % Longitud eslabon dos 
L1 = L2*L1_L2                                % Longitud eslabon uno
L3 = L2*L3_L2                                % Longitud eslabon tres
