clear;
close;
clc;
format compact

%[AB,AA,Ao,BB,Bo,oo]
bt_rate=randi(100,1,6);
bt_rate=bt_rate/sum(bt_rate);

sumation=sum(bt_rate)
for i=1:5
    t=bt_rate(end,:)
    [AB,AA,Ao,BB,Bo,oo]=deal(t(1),t(2),t(3),t(4),t(5),t(6));
    AB1=AB*AB/2+AB/2*(AA+Ao/2+BB+Bo/2)*2+(AA+Ao/2)*(BB+Bo/2)*2;
    AA1=AB*AB/4+AA*AA+Ao*Ao/4+AB*AA/2*2+AB*Ao/4*2+AA*Ao/2*2;
    Ao1=Ao*Ao/2+Ao/2*(AA+AB/2+oo+Bo/2)*2+(AA+AB/2)*(oo+Bo/2)*2;
    BB1=AB*AB/4+BB*BB+Bo*Bo/4+AB*BB/2*2+AB*Bo/4*2+BB*Bo/2*2;
    Bo1=Bo*Bo/2+Bo/2*(BB+AB/2+oo+Ao/2)*2+(BB+AB/2)*(oo+Ao/2)*2;
    oo1=Ao*Ao/4+Bo*Bo/4+oo*oo+Ao*Bo/4*2+Ao*oo/2*2+Bo*oo/2*2;
    tmp=[AB1,AA1,Ao1,BB1,Bo1,oo1]
    sum(tmp)%check,shoule be 1
    bt_rate=[bt_rate;tmp/sum(tmp)];
end
bt_rate
% plot(bt_rate)
bt_rate_short=[bt_rate(:,1),bt_rate(:,2)+bt_rate(:,3),bt_rate(:,4)+bt_rate(:,5),bt_rate(:,6)];%AB,A,B,O,four types of blood's rate
