a = 1; b = 1; c = 1;
u = linspace(0, 2, 100);
v = linspace(0, 2*pi, 100);
[u, v] = meshgrid(u, v);

x = a * u .* cos(v);
y = b * u .* sin(v);
z = c * u.^2;

surf(x, y, z)
axis equal
title('Elliptic Paraboloid')

for az = 0:1:360
  view(az, 30);
  pause(0.01);
end
