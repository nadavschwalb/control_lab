k_i=1;
k_p=1;

L=tf([23.5*k_p 23.5*k_i],[2.83 (1+23.5*k_p) 23.5*k_i]);
T=L/(1+L);
step(T);
