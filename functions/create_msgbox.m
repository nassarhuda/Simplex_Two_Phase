% create message box
function [] = create_msgbox(input_message)
S.fig = figure('units','pixels',...
    'position',[400 400 300 310],...
    'menubar','none',...
    'name','GUI_Simplex',...
    'numbertitle','off',...
    'resize','off');
%%
S.pb = uicontrol('style','push',...
    'unit','pix',...
    'position',[95 30 110 20],...
    'string','OK!',...
    'tooltip','Push to find out which radio button is selected');
%%
S.tx = uicontrol('style','text','position',[50 70 200 150]);
set(S.tx,'string',input_message);
set(S.tx,'FontSize', 15 );

%%
set(S.pb,'callback',{@close_window,S})

function [] = close_window(varargin)
close GUI_Simplex