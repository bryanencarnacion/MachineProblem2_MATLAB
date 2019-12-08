x1 = input('Enter the first x value: ');
y1 = input('Enter the first y value: ');
x2 = input('Enter the second x value: ');
y2 = input('Enter the second y value: ');
x3 = input('Enter the third x value: ');
y3 = input('Enter the third y value: ');
eqn1 = -(x1^2 + y1^2);
eqn2 = -(x2^2 + y2^2);
eqn3 = -(x3^2 + y3^2);
A =[x1 y1 1; x2 y2 1; x3 y3 1];
B = [eqn1; eqn2; eqn3];
Z = linsolve(A,B);
D = Z(1); 
E = Z(2); 
F = Z(3);
Dreal = (D*(1/2))^2;
Ereal = (E*(1/2))^2;
h = Dreal;
k = Ereal;
c = [h k];
r = sqrt(((D^2+E^2)/4)-F);

fprintf('The vector corresponds to the general equation, D: %.2f\n',D)
fprintf('The vector corresponds to the general equation, E: %.2f\n',E)
fprintf('The vector corresponds to the general equation, F: %.2f\n',F)
fprintf('The 2 points (h,k) of the circle: %.2f\n',c) 
fprintf('Radius: %.2f\n',r)