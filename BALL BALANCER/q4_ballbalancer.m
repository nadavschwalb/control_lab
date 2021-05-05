k_p=150;
k_d=18;
CP=tf([0.724*k_p],[1 0.724*k_d 0.724*k_p]);
figure(1);
step(CP);
L=CP;



