function [X_norm mn sigma] = featnorm(X) 
  
  X_norm = X;
  mn = zeros(1 , size(X,2));
  sigma = zeros(1 , size(X,2));
  
  mn = mean(X);
  sigma = std(X);
  
  X_norm(:,1) = (X_norm(:,1).- mn(1)) ./ sigma(1);
  X_norm(:,2) = (X_norm(:,2).- mn(2)) ./ sigma(2);
  X_norm(:,3) = (X_norm(:,3).- mn(3)) ./ sigma(3);
  
endfunction
