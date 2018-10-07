function [theta , cost_hist] = gradient(X, y ,theta , alpha,num_iters)
  m = length(X);
  cost_hist = zeros(num_iters,1);
  
  for iter = 1 : num_iters
    
    theta = theta - alpha * (1/m) * (((X*theta) - y)' * X)';
    
    cost_hist(iter) = comp_cost(X,y, theta);  
  endfor


  
endfunction
