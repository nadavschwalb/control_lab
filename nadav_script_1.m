r1 = normrnd(0,1,[1,6])

y = 1./r1;
x = linspace(1,6,6);
poly_3 = polyfit(x,y,3);
poly_4 = polyfit(x,y,4);
poly_5 = polyfit(x,y,5);

hold on;
datacursormode on;
figure(1);
fplot(poly2sym(poly_3),[1 6],'LineWidth',2,'MeshDensity',500);
fplot(poly2sym(poly_4),[1 6], '--r','LineWidth',2,'MeshDensity',500);
fplot(poly2sym(poly_5),[1 6], ':m', 'LineWidth',2,'MeshDensity',500);

hold off;

