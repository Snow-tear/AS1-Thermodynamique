clear
load("partie 1.mat")

R=8.3144621;

T_K=T_C+273.15;
dT=1*ones(size(T_K));

P_atm = 1.013; % en bar  
P_vs=P_atm-delta_P;
dP=0.02*ones(size(P_vs));


errorbar(T_K,P_vs,-dP,dP,-dT,dT,'.')
hold on
grid on
grid minor
title("Evolution de P* en fonction de la température de l'eau")
xlabel("T(K)")
ylabel("P*(bar)")

fplot(@(T) exp((-5215.238351/T)+13.98941477),[320 380])

hold off

P_vs_bar=P_vs*10000;
dlnP=200./P_vs_bar;
d1RT=1./(R.*T_K.^2);

errorbar(-1./(R*T_K),log(P_vs),-dlnP,dlnP,-d1RT,d1RT,'.')
hold on
grid on
grid minor
title("Evolution de P* en fonction de la température de l'eau")
xlabel("-1/RT (SI)")
ylabel("ln(P*), P* en bar")


