% Trabalho 1
% Processamento Digital de Sinais
% André Luís de Oliveira  2270170

close all
clc
clear all

%% Questão 1

N = 2; %Número de Períodos
w = 2*pi;
T = (2*pi)/w;
t = 0: 0.00001: N*T;
x1 = sin(w*t);

%A
figure
hold all
plot (t, x1);

%Discretizar
Ts1 = 0.1; % 100ms
Fs1 = 1/Ts1;
wa1 = 2*pi*Fs1;
n = 0:ceil(N*T/Ts1)-1;
x1_disc = sin(w*n*Ts1);

stem(n*Ts1, x1_disc, 'r', 'filled')

%Aliasing
x1_alias = sin((w+wa1)*t);
plot(t, x1_alias, 'k--');

%Gráfico
xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Ts = 100 ms')
xlim([0 N*T]);
xticks(0:Ts1: N*T)
ylim([-1 1])
yticks(-1: 0.1: 1)


%B
figure
hold all
plot (t, x1);

%Discretizar
Ts2 = 0.2; % 200ms
Fs2 = 1/Ts2;
wa2 = 2*pi*Fs2;
n = 0:ceil(N*T/Ts2)-1;
x2_disc = sin(w*n*Ts2);

stem(n*Ts2, x2_disc, 'r', 'filled')

%Aliasing
x2_alias = sin((w+wa2)*t);
plot(t, x2_alias, 'k--');

%Gráfico
xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Ts = 200 ms')
xlim([0 N*T]);
xticks(0:Ts2: N*T)
ylim([-1 1])
yticks(-1: 0.1: 1)


%C
figure
hold all
plot (t, x1);

%Discretizar
Ts3 = 0.3; % 300ms
Fs3 = 1/Ts3;
wa3 = 2*pi*Fs3;
n = 0:ceil(N*T/Ts3)-1;
x3_disc = sin(w*n*Ts3);

stem(n*Ts3, x3_disc, 'r', 'filled')

%Aliasing
x3_alias = sin((w+wa3)*t);
plot(t, x3_alias, 'k--');

%Gráfico
xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Ts = 300 ms')
xlim([0 N*T]);
xticks(0:Ts3: N*T)
ylim([-1 1])
yticks(-1: 0.1: 1)


%D
figure
hold all
plot (t, x1);

%Discretizar
Ts4 = 0.4; % 400ms
Fs4 = 1/Ts4;
wa4 = 2*pi*Fs4;
n = 0:ceil(N*T/Ts4)-1;
x4_disc = sin(w*n*Ts4);

stem(n*Ts4, x4_disc, 'r', 'filled')

%Aliasing
x4_alias = sin((w+wa4)*t);
plot(t, x4_alias, 'k--');

%Gráfico
xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Ts = 400 ms')
xlim([0 N*T]);
xticks(0:Ts4: N*T)
ylim([-1 1])
yticks(-1: 0.1: 1)


%E
figure
hold all
plot (t, x1);

%Discretizar
Ts5 = 0.5; % 500ms
Fs5 = 1/Ts5;
wa5 = 2*pi*Fs5;
n = 0:ceil(N*T/Ts5)-1;
x5_disc = sin(w*n*Ts5);

stem(n*Ts5, x5_disc, 'r', 'filled')

%Aliasing
x5_alias = sin((w+wa5)*t);
plot(t, x5_alias, 'k--');

%Gráfico
xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Ts = 500 ms')
xlim([0 N*T]);
xticks(0:Ts5: N*T)
ylim([-1 1])
yticks(-1: 0.1: 1)



%% Questão 2

t = 0: 0.00001: 0.15;
w = 2*pi*60;
T = (2*pi)/w;
xc = 127 * sqrt(3) * sin(w * t);
N = 0.15/T;


%A
figure
hold all
plot (t, xc, 'k');

%Discretizar
Fs = 20;
Ts = 1/Fs;
n = 0:ceil(N*T/Ts)-1;
x_disc = 127 * sqrt(3) * sin(w * n * Ts);

stem(n*Ts, x_disc, 'r', 'filled')

xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Fs = 20 Hz')
xlim([0 0.15]);
xticks(0:Ts: 0.15)
ylim([-220 220])
yticks(-220: 20: 220)

%B
figure
hold all

Fs = 200
Ts = 1/Fs;
n = 0:ceil(N*T/Ts)-1;
x_disc = 127 * sqrt(3) * sin(w * n * Ts);

plot (t, xc, 'k');
stem(n*Ts, x_disc, 'r', 'filled')

xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Fs = 200 Hz')
xlim([0 0.15]);
xticks(0:Ts: 0.15)
ylim([-220 220])
yticks(-220: 20: 220)


%C
figure
hold all

Fs = 50
Ts = 1/Fs;
n = 0:ceil(N*T/Ts)-1;
x_disc = 127 * sqrt(3) * sin(w * n * Ts);

plot (t, xc, 'k');
stem(n*Ts, x_disc, 'r', 'filled')

xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Fs = 50 Hz')
xlim([0 0.15]);
xticks(0:Ts: 0.15)
ylim([-220 220])
yticks(-220: 20: 220)


%D
figure
hold all

Fs = 500
Ts = 1/Fs;
n = 0:ceil(N*T/Ts)-1;
x_disc = 127 * sqrt(3) * sin(w * n * Ts);

plot (t, xc, 'k');
stem(n*Ts, x_disc, 'r', 'filled')

xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Fs = 500 Hz')
xlim([0 0.15]);
xticks(0:10*Ts: 0.15)
ylim([-220 220])
yticks(-220: 20: 220)


%E
figure
hold all

Fs = 100
Ts = 1/Fs;
n = 0:ceil(N*T/Ts)-1;
x_disc = 127 * sqrt(3) * sin(w * n * Ts);

plot (t, xc, 'k');
stem(n*Ts, x_disc, 'r', 'filled')

xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Fs = 100 Hz')
xlim([0 0.15]);
xticks(0:Ts: 0.15)
ylim([-220 220])
yticks(-220: 20: 220)


%F
figure
hold all

Fs = 1000
Ts = 1/Fs;
n = 0:ceil(N*T/Ts)-1;
x_disc = 127 * sqrt(3) * sin(w * n * Ts);

plot (t, xc, 'k');
stem(n*Ts, x_disc, 'r', 'filled')

xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('Fs = 1000 Hz')
xlim([0 0.15]);
xticks(0:10*Ts: 0.15)
ylim([-220 220])
yticks(-220: 20: 220)



%% Questão 3
N = 2; %Número de Períodos
f1 = 1/8;
f2 = -7/8;
w1 = 2*pi *f1;
w2 = 2*pi *f2;
T1 = (2*pi)/w1;
T2 = (2*pi)/w2;
t = 0: 0.00001: N*T1;
x1 = sin(w1*t);
x2 = sin(w2*t);

figure
hold all

plot(t, x1, 'b--')
plot(t, x2, 'm--')

%Amostragem
Fs = 1;
Ts = 1/Fs;
n1 = 0:ceil(N*T1/Ts)-1;
x_disc1 = sin(w1 * n1 * Ts);
stem(n1*Ts, x_disc1, 'c', 'filled');

n2 = 0:ceil(abs(T2)/Ts)-1: N*T1;
x_disc2 = sin(w2 * n2 * Ts);
stem(n2*Ts, x_disc2, 'r');

xlabel('Tempo/Amostras')
ylabel('Amplitude')
title('1/8 Hz e -7/8 Hz em Aliasing para Fs = 1 Hz')
xlim([0 N*T1]);
xticks(0:Ts: N*T1)
ylim([-1 1])
yticks(-1: 0.2: 1)
