% Jiaqi Wang
% 02/03/2019
% Project Demo


% data input, date selected from 2013 to 2017
y = [3.742,3.598,2.553,2.237,2.491];  % y is the NYS gas price, dollor/gallon
x1 = [57369,58878,60850,62909,64894]; % x1 is NYS median household income, dollars/year
x2 = [10876551,10966425,11132587,11256778,11288933]; % x2 is NYS vehicle registration number

% data normalization

normy = y - min(y(:));
normy = normy ./ max(normy(:));

normx1 = x1 - min(x1(:));
normx1 = normx1 ./ max(normx1(:));

normx2 = x2 - min(x2(:));
normx2 = normx2 ./ max(normx2(:));

values = spcrv([[normx1(1) normx1 normx1(end)];[normy(1) normy normy(end)]],3);
plot(values(1,:),values(2,:), 'r','LineWidth',2);
hold on

values = spcrv([[normx2(1) normx2 normx2(end)];[normy(1) normy normy(end)]],3);
plot(values(1,:),values(2,:), 'b','LineWidth',2);

grid on
legend ('Median Household Income','Vehcle Number')
ylabel('Gas Price')
title ('Gas Price with Respect of Median Household Income and Vehcle Number in NYS')
