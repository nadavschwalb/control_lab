[Time,simOut] = sim('diff_eq');
diff = simOut(1:end,1);
state = simOut(1:end,3);
Time = Time';
diff = diff';
state = state';

figure('Name','simulation');
hold on;
plot(Time,diff,'g');
plot(Time,state,'b');
hold off;
legend('diff','state');
