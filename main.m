newton(@funcOne, @funcPrime, 1/2, 5*10^(-16));
oc = orderConv (@funcOne , @funcPrime , 1/2 , 5*10^(-16))
%newtonMod(@funcOne, @funcPrime, @funcSec, (1/2), 5*10^(-16));
%orderConvMod (@funcOne , @funcPrime , @funcSec, (1/2) , 5*10^(-16));

plot(oc);