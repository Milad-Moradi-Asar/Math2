a = 2; b = 1; c = 1.5;

theta = linspace(0, pi, 100);
phi = linspace(0, 2*pi, 100);
[theta, phi] = meshgrid(theta, phi);

x = a * sin(theta) .* cos(phi);
y = b * sin(theta) .* sin(phi);
z = c * cos(theta);

surf(x, y, z)
axis equal
xlabel('x'), ylabel('y'), zlabel('z')
title('Ellipsoid')

for az = 0:1:360
  view(az, 30);
  pause(0.01);
end
