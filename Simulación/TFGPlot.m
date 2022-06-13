%TFGPlot
function [] = TFGPlot(grafico, time, var, inicio, final, gtitle, xtitle, ytitle, size)

plot(time, var, 'LineWidth', 2);

title(grafico, gtitle, 'FontName','Times New Roman', 'FontSize', size);
xlabel(grafico, xtitle,  'FontName', 'Times New Roman', 'FontSize', size);
ylabel(grafico, ytitle,  'FontName', 'Times New Roman', 'FontSize', size);
xlim([inicio,final])
grid on;

end