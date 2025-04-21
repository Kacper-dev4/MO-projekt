clear all
clc

T = 2;
P = 1.25;
I = 1/4;
D = 0.8;

out = sim("Obiekt123.slx");
e = out.e.Data;
y = out.y.Data;
t = out.tout;
figure
plot(t,y);
xlabel('Czas, s')
ylabel('Sygnał wyjściowy')

figure
plot(t,e);
xlabel('Czas, s')
ylabel('Uchyb')

ISE = sum(e.^2);