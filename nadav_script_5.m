sim('q5_tf');
t = tout';
s1 = ScopeData.signals(1).values';
s2 = ScopeData.signals(2).values';
s3 = ScopeData.signals(3).values';
s4 = ScopeData.signals(4).values';
s5 = ScopeData.signals(5).values';

figure('Name','tf plot');
hold on;
plot(t,s1);
plot(t,s2);
plot(t,s3);
plot(t,s4);
plot(t,s5);
hold off;
ylim([-0.3 0.3]);
legend('saturation','dead zone','backlash','relay','none');

%legend();