a = 1; b = 1;
u = linspace(-2, 2, 100);
v = linspace(-2, 2, 100);
[u, v] = meshgrid(u, v);

x = u;
y = v;
z = a * u.^2 - b * v.^2;

surf(x, y, z)
axis equal
title('Hyperbolic Paraboloid')

for az = 0:1:360
  view(az, 30);
  pause(0.01);
end
