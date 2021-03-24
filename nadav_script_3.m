coef = [8 2 5 1];
theta = linspace(-pi,pi,200*pi);
rho = (coef(1)+coef(2)) +0.5*sin((coef(3)+coef(4))*theta);
[x,y] = pol2cart(theta,rho);
figure(1);
plot(x,y);
figure(2);
plot(theta,rho);

dx = diff(x);
dy = diff(y);
figure(3);
hold on;
plot(x,atan(y));

hold off;


