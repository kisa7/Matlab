% Loading data
A = load('-ascii', 'a.txt');
B = load('-ascii', 'b.txt')';

[cols rows] = size(A);
D = det(A);

% Kramer
for i=1:rows
  tA = A;
  tA(:, i) = B;
  Xa(i, 1) = det(tA) / D;
end
 
% inverse matrix
Xb = inv(A) * B;
 
% "\" operation
Xc = A \ B;
 
X = [Xa Xb Xc];
vn = abs(A * X - [B B B]);
RootsErrors = max(vn)     % Maximum error vector value
fprintf('    Kramer    Inverse   Operator\\ \n');