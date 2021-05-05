x=[0.2,0.4,0.6,0.8,1,1.2,1.4];
amp=[13.41,10.32,8.6,6.59,4.34,2.96,2.28];
db_amp=[0,0,0,0,0,0,0];
for i=1:7
    db_amp=mag2db(amp/7);
    %y(i)=2*amp(i)*x(i);
end
figure(1);
plot(x,db_amp);
ny=polyfit(x,db_amp,6);
nx=linspace(20,-20);
figure(2);
plot(x,ny);

t=[0.65,0.52,0.48,0.46,0.45,0.44,0.44];
for i=1:7
    ph(i)=360*x(i)*t(i);
end
figure(3);
plot(x,ph);