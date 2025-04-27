a = 1; b = 1; c = 2;
u = linspace(0, 2*pi, 100);
v = linspace(-1, 1, 100);
[u, v] = meshgrid(u, v);

x = a * cosh(v) .* cos(u);
y = b * cosh(v) .* sin(u);
z = c * sinh(v);

surf(x, y, z)
axis equal
xlabel('x'), ylabel('y'), zlabel('z')
title('One-sheeted Hyperboloid')

for az = 0:1:360
  view(az, 30);
  pause(0.01);
end
