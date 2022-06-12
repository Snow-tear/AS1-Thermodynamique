clear
load("partie 2.mat")

yyaxis left
scatter(t,T)
hold on
ylabel('T (°C)')

T1 = polyfit(t(2:14),T(2:14),1);
plot(t(2:14),polyval(T1,t(2:14)))

yyaxis right
scatter(t,delta_m)
ylabel('delta m (g)')

delta_m1 = polyfit(t(25:32),delta_m(25:32),1);
plot(t(25:32),polyval(delta_m1,t(25:32)))


xlabel("t (min)")
grid on
grid minor

