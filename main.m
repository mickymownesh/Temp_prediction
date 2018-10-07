data = csvread("data.csv");

% y --> temperature of chennai city 
y = data(:,6);

%calculating the length
m = length(y);

% X  -->  parm 1 : rainfall , parm 2 : wind speed , parm 3 : wind direction
X = data(:,7:9);


%normalize the data

[X mu sigma] = featnorm(X);

%adding a column of 1s in X

X = [ones(m, 1) X];

theta = (zeros(1 ,(size(X,2))))';
alpha = 0.01;
num_iters = 300;

%performing gradient decent

[theta , cost_hist] = gradient(X,y,theta , alpha,num_iters);

%ploting the convergence graph 

figure;
plot(1:num_iters,cost_hist,'-b','LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

%predicting the temprature in chennai 
%with parameters rainfall , wind speed , wind direction

fprintf("The prediction is for  rainfall : 0.2 mm ; wind speed : 6.63 ; wind Direction : 93.4 (10m above the ground level\n\n");

predict = [1 , ((0.2- mu(1)) / sigma(1)),((6.63- mu(2)) / sigma(2)),((93.4- mu(3)) / sigma(3))] * theta;

%printing the predicted temperature of chennai 

fprintf("The predicted temperature is : %d\n\n",predict);

fprintf("The prediction is for  rainfall : 1.8 mm ; wind speed : 8.21 ; wind Direction : 82.5 (10m above the ground level\n\n");

predict = [1 , ((1.8- mu(1)) / sigma(1)),((8.21- mu(2)) / sigma(2)),((82.5- mu(3)) / sigma(3))] * theta;

fprintf("The predicted temperature is : %d\n",predict);
