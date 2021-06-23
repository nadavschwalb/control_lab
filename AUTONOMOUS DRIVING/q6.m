theta = linspace(0,2*pi,10000);
x=900+(292.5+100.*sin(-2.*theta)+25.*sin(4.*theta)+100.*exp(-0.5.*(theta-(3*pi)/2).^2).*sin(10.*theta).*sin(4.*theta)).*cos(theta);
y=1050+(292.5+100.*sin(-2.*theta)+100.*exp(-0.5.*(theta-(3*pi)/2).^2).*sin(10.*theta).*sin(4.*theta)).*sin(theta);
%plot(x,y);
dist=zeros(2,length(theta)-1);
for i=1:9999
    dist(:,i)=[abs(x(i+1)-x(i)) abs(y(i+1)-y(i))]';
end
path=zeros(2,length(theta)-1);
path(:,1)=dist(:,1);
for i=2:9999
    path(:,i)=path(:,i-1)+dist(:,i);
end
phi=atan2(path(2,:),path(1,:));
steps=linspace(1,9999,9999);
figure(1);
plot(steps,phi);
ylim([0 pi/2]);
yticks([0 pi/4 pi/3 pi/2 pi]);
yticklabels({'0','\pi/4','\pi/3','\pi/2'})
