theta=linspace(0,2*pi,200*pi);
rho=(3+8)+0.5*sin((3)*theta);
[x,y]=pol2cart(theta,rho);
plot(x,y);
dx = diff(x);
dy = diff(y);
ax=atan(dx);
ay=atan(dy);





