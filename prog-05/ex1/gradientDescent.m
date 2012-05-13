function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


    % REVISIT: Again, troubles with the syntax of octave vector stuff and
    %          making the formulas from class work. Busting out the quick
    %          manually iterative version like I did in python for the robotics
    %          class, just to get this in by the deadline...which I only
    %          made by 3 minutes.

    s1 = 0;
    s2 = 0;
    for i=1:m
      h = (theta(1) + (theta(2) * X(i,2)));
      s1 = s1 + ((h - y(i)));
      s2 = s2 + ((h - y(i)) * X(i,2));
    end
    s1 = (alpha/m) * s1;
    s2 = (alpha/m) * s2;

    theta(1) = theta(1) - s1;
    theta(2) = theta(2) - s2;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
