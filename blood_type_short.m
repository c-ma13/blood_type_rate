clear;
close;
clc;
format compact

%[AB,AA,BB]
bt_rate=randi(100,1,3);
bt_rate=bt_rate/sum(bt_rate);

sumation=sum(bt_rate)
for i=1:5
    t=bt_rate(end,:);
    [AB,AA,BB]=deal(t(1),t(2),t(3));
    AB1=AB*(BB+AA)+AB^2/2+AA*BB*2;
    AA1=AA*AA+AA*AB+AB^2/4;
    BB1=BB*BB+BB*AB+AB^2/4;
    tmp=[AB1,AA1,BB1];
    sum(tmp);%check,shoule be 1
    bt_rate=[bt_rate;tmp];
end
bt_rate
% plot(bt_rate)
