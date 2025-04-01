// Spirale des Theodorus (Spiral of Theodorus)

//clf; 
//clc; 
n = 17;  
x = zeros(1, n+1);
y = zeros(1, n+1);
x(1) = 0;
y(1) = 0;
theta = 0;
for k = 1:n
    if k == 1
        theta = theta + %pi/2; 
    else
        theta = theta + atan(1/sqrt(k-1));
    end
    x(k+1) = x(k) + cos(theta) * sqrt(k);
    y(k+1) = y(k) + sin(theta) * sqrt(k);
end
plot(x, y, 'b-', 'LineWidth', 2);
for k = 1:n
    plot([0 x(k+1)], [0 y(k+1)], 'r-', 'LineWidth', 1);
end
title('Spiral of Theodorus');
xlabel('X');
ylabel('Y');
xgrid;
axis equal; 
a = gca(); 
a.data_bounds = [-5 5 -5 5]; 
