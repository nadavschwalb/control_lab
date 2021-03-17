r=normrnd(0,1,[1,6]);
y=1./r;
X=[1,2,3,4,5,6];
p3=polyfit(X,y,3);
p4=polyfit(X,y,4);
p5=polyfit(X,y,5);
hold on;
figure(1);
fplot(poly2sym(p3),[1 6],'LineWidth',2,'MeshDensity',500);
fplot(poly2sym(p4),[1 6],'--r','LineWidth',2,'MeshDensity',500);
fplot(poly2sym(p5),[1 6],':m','LineWidth',2,'MeshDensity',500);
hold off;

