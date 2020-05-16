function varargout = Covid19_GUI(varargin)
% COVID19_GUI MATLAB code for Covid19_GUI.fig
%      COVID19_GUI, by itself, creates a new COVID19_GUI or raises the existing
%      singleton*.
%
%      H = COVID19_GUI returns the handle to a new COVID19_GUI or the handle to
%      the existing singleton*.
%
%      COVID19_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COVID19_GUI.M with the given input arguments.
%
%      COVID19_GUI('Property','Value',...) creates a new COVID19_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Covid19_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Covid19_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Covid19_GUI

% Last Modified by GUIDE v2.5 15-May-2020 10:48:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Covid19_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Covid19_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Covid19_GUI is made visible.
function Covid19_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Covid19_GUI (see VARARGIN)

% Choose default command line output for Covid19_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Covid19_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Covid19_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
value=get(handles.popupmenu1,'Value');
load data.mat;
switch (value)
    case 2
        set(handles.edit1,'string',159119);
        set(handles.edit2,'string',6288);
    case 3
        set(handles.edit1,'string',83917);
        set(handles.edit2,'string',4637);
    case 4
        set(handles.edit1,'string',33050);
        set(handles.edit2,'string',1074);
    case 5
        set(handles.edit1,'string',203591);
        set(handles.edit2,'string',27682);
    case 6
        set(handles.edit1,'string',1039909);
        set(handles.edit2,'string',60966);  
end
        


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value=get(handles.popupmenu1,'Value');
set(handles.edit2,'string',' ');
load data.mat;
figure;
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CASES');
switch (value)
    case 2
    x=data.dateRep(1:121);
    y=data.cases(1:121);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CONFIRMED CASES');
    title('GERMANY');
    set(handles.edit1,'string',159119);
    case 3
        x=data.dateRep(123:243);
        y=data.cases(123:243);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('CHINA');
        set(handles.edit1,'string',83917);
    case 4
        x=data.dateRep(245:364);
        y=data.cases(245:364);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('INDIA');
        set(handles.edit1,'string',33050);
    case 5
        x=data.dateRep(366:486);
        y=data.cases(366:486);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('ITALY');
        set(handles.edit1,'string',203591);
    case 6
        x=data.dateRep(488:608);
        y=data.cases(488:608);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('UNITED STATES OF AMERICA');
        set(handles.edit1,'string',1039909);
end
grid on;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value=get(handles.popupmenu1,'Value');
set(handles.edit1,'string',' ');
load data.mat;
figure;
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CASES');
switch (value)
    case 2
    x=data.dateRep(1:121);
    y=data.deaths(1:121);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DECEASED CASES');
    title('GERMANY');
    set(handles.edit2,'string',6288);
    case 3
        x=data.dateRep(123:243);
        y=data.deaths(123:243);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('CHINA');
        set(handles.edit2,'string',4637);
    case 4
        x=data.dateRep(245:364);
        y=data.deaths(245:364);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('INDIA');
        set(handles.edit2,'string',1074);
    case 5
        x=data.dateRep(366:486);
        y=data.deaths(366:486);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('ITALY');
        set(handles.edit2,'string',27682);
    case 6
        x=data.dateRep(488:608);
        y=data.deaths(488:608);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('UNITED STATES OF AMERICA'); 
        set(handles.edit2,'string',60966); 
end
grid on;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value=get(handles.popupmenu1,'Value');
set(handles.edit1,'string',' ');
set(handles.edit2,'string',' ');
load data.mat;
figure;
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CASES');
switch (value)
    case 2
    x=data.dateRep(1:121);
    y=data.cases(1:121);
    subplot(1,2,1);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CONFIRMED CASES');
    title('GERMANY');
    grid on;
    subplot(1,2,2);
    x=data.dateRep(1:121);
    y=data.deaths(1:121);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DECEASED CASES');
    title('GERMANY');
    set(handles.edit1,'string',159119);
    set(handles.edit2,'string',6288);
     case 3
        x=data.dateRep(123:243);
        y=data.cases(123:243);
        subplot(1,2,1);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('CHINA');
        grid on;
        subplot(1,2,2);
        x=data.dateRep(123:243);
        y=data.deaths(123:243);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('CHINA');
        set(handles.edit1,'string',83917);
        set(handles.edit2,'string',4637);
    case 4
        x=data.dateRep(245:364);
        y=data.cases(245:364);
        subplot(1,2,1);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('INDIA');
        grid on;
        subplot(1,2,2);
        x=data.dateRep(245:364);
        y=data.deaths(245:364);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('INDIA');
        set(handles.edit1,'string',33050);
        set(handles.edit2,'string',1074);
    case 5
        x=data.dateRep(366:486);
        y=data.cases(366:486);
        subplot(1,2,1);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('ITALY');
        grid on;
        subplot(1,2,2);
        x=data.dateRep(366:486);
        y=data.deaths(366:486);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('ITALY');
        set(handles.edit1,'string',203591);
        set(handles.edit2,'string',27682);
    case 6
        x=data.dateRep(488:608);
        y=data.cases(488:608);
        subplot(1,2,1);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        title('UNITED STATES OF AMERICA');
        grid on;
        subplot(1,2,2);
        x=data.dateRep(488:608);
        y=data.deaths(488:608);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF DECEASED CASES');
        title('UNITED STATES OF AMERICA');  
        set(handles.edit1,'string',1039909);
        set(handles.edit2,'string',60966);
end
grid on;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
