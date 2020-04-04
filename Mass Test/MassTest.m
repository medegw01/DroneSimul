%Performs mass verification test

xaccel = ax.Data;
yaccel = ay.Data;
zaccel = az.Data;
t =x.Time;

subplot(4,1,[1,2,3])
plot(t, xaccel, t, yaccel, t, zaccel, 'LineWidth', 2)
title('Mass Verification: Max Torque')
xlabel('Time [s]')
ylabel('Acceleration [m/s^2]')
legend('ax', 'ay', 'az')


t1 = Torques.Data(:,1);
t2 = Torques.Data(:,2);
t3 = Torques.Data(:,3);
t4 = Torques.Data(:,4);

subplot(4,1,4)
plot(t, t1, t, t2, t, t3, t, t4, '-.',  'LineWidth', 2)
xlabel('Time [s]')
ylabel('Torque [N-m]')
legend('T1', 'T2', 'T3', 'T4')
ylim([-0.15 0.15])
yticks(-0.15:0.05:0.15)
