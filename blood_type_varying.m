clear;
close;
clc;
format compact

bt_rate=randi(4,1,4);
bt_rate=bt_rate/sum(bt_rate);

for i=1:1000
    t=bt_rate(end,:);
    mag=(rand(1)*2-1)*0.005;
    ind=randi(4,1,1);    
    t(ind)=t(ind)+mag;
%     ind=randi(4,1,1);    
%     t(ind)=t(ind)-mag;
    t=t/sum(t);
    bt_rate=[bt_rate;t];
end

plot(bt_rate)