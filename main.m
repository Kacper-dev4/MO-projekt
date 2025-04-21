clear all
clc

T = 10;
P = 1.825;
I = 1/5;
D = 0.9;
% kr = 12.549;
% Ti = 1.576;
% Td = 0.394;
% 
% P = kr;
% I = 1/Ti;
% D = kr*Td;

out = sim("Obiekt123.slx");
e = out.e.Data;
y = out.y.Data;
u = out.u.Data;
t = out.tout;
figure
plot(t,y);
xlabel('Czas, s')
ylabel('Sygnał wyjściowy')

figure
plot(t,e);
xlabel('Czas, s')
ylabel('Uchyb')

figure
plot(t,u);
xlabel('Czas, s')
ylabel('Sygnał sterowania')


ISE = sum(e.^2)
ICE = sum(u.^2);

% org = out.oryginalny.Data;
% figure
% plot(t,org);
% xlabel('Czas, s')
% ylabel('Sygnał oryginalny przefiltrowany')

