function [jVal, gradient] = costFunction(theta)
  % Code to compute J(theta)
  jVal = (theta(1) - 5) ^ 2 + (theta(2) - 5) ^ 2;

  gradient = zeros(2,1);

  % NOTE: Remember theta0 is theta(1) in octave

  % Code to compute partial derivative dJ(theta)/dtheta0
  gradient(1) = 2 * (theta(1) - 5);

  % Code to compute partial derivative dJ(theta)/dtheta1
  gradient(2) = 2 * (theta(2) - 5);
