theta = linspace(0, 2*pi, 100);
z = linspace(-2, 2, 100);
[Theta, Z] = meshgrid(theta, z);

a = 2;  % محور X
b = 1;  % محور Y

X = a * cos(Theta);
Y = b * sin(Theta);

surf(X, Y, Z)
colormap autumn
xlabel("X")
ylabel("Y")
zlabel("Z")
title("Elliptic Cylinder")
shading interp

for az = 0:1:360
  view(az, 30);
  pause(0.01);
end

