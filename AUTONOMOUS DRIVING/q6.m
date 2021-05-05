theta = linspace(-pi,pi,10000);
x=900+(292.5+100.*sin(-2.*theta)+25.*sin(4.*theta)+100.*exp(-0.5.*(theta-(3*pi)/2).^2).*sin(10.*theta).*sin(4.*theta)).*cos(theta);
y=1050+(292.5+100.*sin(-2.*theta)+100.*exp(-0.5.*(theta-(3*pi)/2).^2).*sin(10.*theta).*sin(4.*theta)).*sin(theta);
plot(x,y);
