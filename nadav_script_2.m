r2 = r1*2;
syms func_y(x);
x_space = linspace(0,2*pi,6);
x_space_6000 = linspace(0,2*pi,6000);
func_y(x) = r2(1)*sin(r2(2)*x+r2(3)) +r2(4)*sin(r2(5)*x+r2(6));
y_vec_6 = double(func_y(x_space));
y_vec_6000 = double(func_y(x_space_6000));
figure(2);
hold on;
datacursormode on;

fplot(func_y,[0 2*pi],'MeshDensity',6000);
plot(x_space,func_y(x_space));
s= stem(x_space,func_y(x_space),'LineWidth',2);
s.Color = 'green';
hold off;