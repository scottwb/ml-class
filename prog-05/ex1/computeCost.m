function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% REVISIT: For some reason I keep breaking on the vectorization version
%          with some obscure syntax error. Busting this out iteratively
%          for now since I am super-crunched for time.
for i=1:m
  J = J + (((theta(1) + (theta(2) * X(i,2))) - y(i)) ^ 2);
end
J = J / (2 * m);


% =========================================================================

end
