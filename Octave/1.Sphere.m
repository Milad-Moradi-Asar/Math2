r = 3;

theta = linspace(0, pi, 100);
phi = linspace(0, 2*pi, 100);
[theta, phi] = meshgrid(theta, phi);

x = r * sin(theta) .* cos(phi);
y = r * sin(theta) .* cos(phi);
z = r * cos(theta);

surf(x, y, z)
axis equal
xlabel('x'), ylabel('y'), zlabel('z')
title('sphere')

for az = 0:1:360
  view(az, 30);
  pause(0.01);
end

