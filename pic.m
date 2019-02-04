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

% figure
scatter3(normx1, normx2, normy,'MarkerEdgeColor','k','MarkerFaceColor',[0 .75 .75]);