r2=2*r;
syms y2(x);
y2(x)=r2(1)*sin(r2(2)*x+r2(3))+r2(4)*sin(r2(5)*x+r2(6));
xspace=linspace(0,2*pi,6);
xspace6000=linspace(0,2*pi,6000);
y_v6=double(y2(xspace));
y_v6000=double(y2(xspace6000));

figure(2);
hold on;

fplot(y2,[0 2*pi],'MeshDensity',6000);
stem(xspace,y2(xspace));
hold off;