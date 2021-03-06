function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

a1=[ones(m,1) X]; % adding one column for input X as a bias value
a2=sigmoid(a1*Theta1'); % input *weight resultant in activation func. is a2
a2=[ones(m,1) a2]; % hidden layer bias value is added as 1
a3=sigmoid(a2*Theta2'); %hidden layer information goung through activation
[~,p]=max(a3,[],2); % calculating maximum probability [] of output layer of 
                    % row-wise (2) and return the value of probability as p.



% =========================================================================


end
