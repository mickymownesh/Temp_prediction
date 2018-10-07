function J = comp_cost(X,y,theta)
  
  m = length(X);
  
  J = 0;
  
  J = 1/(2*m) * ((X * theta) - y)' * ( (X* theta) -y); 

  
endfunction
