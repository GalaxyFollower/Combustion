global TW_set eta;
TW_set = 900;
eta = 5;
options = odeset('RelTol', 1e-4, 'AbsTol', 1e-4);
[time, temperature] = ode45(@HeatBalance, [0, 0.5e+2], TW_set, options);
plot(time, log10(temperature))
legend_str = sprintf('TW = %.1f K', TW_set);
legend(legend_str, 'Location', 'best');
xlabel('Time/[s]');
ylabel('log10(Temperature/[K])');