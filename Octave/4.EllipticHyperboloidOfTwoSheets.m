a = 1; b = 1; c = 2;
u = linspace(0, 2*pi, 100);
v = linspace(0.5, 1.5, 100);
[u, v] = meshgrid(u, v);
% شاخه بالا
x1 = a * sinh(v) .* cos(u);
y1 = b * sinh(v) .* sin(u);
z1 = c * cosh(v);
% شاخه پایینی (علامت منفی در z)
x2 = x1;
y2 = y1;
z2 = -z1;
% رسم هر دو شاخه
surf(x1, y1, z1)
hold on
surf(x2, y2, z2)
hold off

axis equal
xlabel('x'), ylabel('y'), zlabel('z')
title('Two-sheeted Hyperboloid')

for az = 0:1:360
  view(az, 30);
  pause(0.01);
end
