function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %

predictions = X * theta; % result is a vector

error0 = (predictions - y).* X(:,1);  ; % vector 
theta0 = theta(1) - ( alpha * (1/m) * sum(error0) );

error1 = (predictions - y) .* X(:,2); % vector
theta1 = theta(2) - ( alpha * (1/m) * sum(error1) ); 

error2 = (predictions - y) .* X(:,3); % vector
theta2 = theta(3) - ( alpha * (1/m) * sum(error2) ); 

theta = [theta0;theta1;theta2];










    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
