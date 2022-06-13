%clear all;

%Buck
%modo = 'Buck-CCM';
%modo = 'Buck-Caso limite';
%modo = 'Buck-DCM';

%Boost
%modo = 'Bosst-CCM';
%modo = 'Boost-Caso limite';
%modo = 'Boost-DCM';

%circuito='boost';
%estado='limite';

%ejex='t[s]';
sizetext=12;

% Tensió bobina
variable='vl';
situacion=[sprintf(' [%s R=%0.1f',modo,Rl) ' \Omega]'];
titulo='Tensión bobina';
ejey='Vl[V]';
titulo=[titulo situacion];

plot(out.t, out.v_l, 'LineWidth', 2);
inicio=220.5*T;
final=222.5*T;
xlim([inicio,final]);

title(titulo, 'FontName','Times New Roman', 'FontSize', sizetext);
xlabel(ejex,  'FontName', 'Times New Roman', 'FontSize', sizetext);
ylabel(ejey,  'FontName', 'Times New Roman', 'FontSize', sizetext);
t_v_l_max=[sprintf('%0.2f%',v_l_max) 'V'];
t_v_l_min=[sprintf('%0.2f%',v_l_min) 'V'];
yline([v_l_max v_l_min],'--',{t_v_l_max,t_v_l_min});
grid on;

nombre=[sprintf('%s_simulacion_%s_%s',circuito,variable,estado) ];
print(nombre,'-depsc')

% Corriente bobina
variable='il';
situacion=[sprintf(' [%s R=%0.1f',modo,Rl) ' \Omega]'];
titulo='Corriente bobina';
ejey='Il[A]';
titulo=[titulo situacion];

plot(out.t, out.i_l, 'LineWidth', 2);
inicio=220.5*T;
final=222.5*T;
xlim([inicio,final])

title(titulo, 'FontName','Times New Roman', 'FontSize', sizetext);
xlabel(ejex,  'FontName', 'Times New Roman', 'FontSize', sizetext);
ylabel(ejey,  'FontName', 'Times New Roman', 'FontSize', sizetext);
t_i_l_max=[sprintf('%0.2f%',i_l_max) 'A'];
t_i_l_min=[sprintf('%0.2f%',i_l_min) 'A'];
yline([i_l_max i_l_min],'--',{t_i_l_max,t_i_l_min});
t_I_L=[sprintf('%0.2f%',I_L) 'A'];
yline([I_L],'-r',{t_I_L},'LineWidth',2);
grid on;

nombre=[sprintf('%s_simulacion_%s_%s',circuito,variable,estado) ];
print(nombre,'-depsc')
