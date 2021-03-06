function varargout = calculator(varargin)
%CALCULATOR M-file for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to calculator_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CALCULATOR('CALLBACK') and CALCULATOR('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CALCULATOR.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 10-Dec-2014 17:28:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO  %after operator, use to avoid more than one operator between two numbers
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'1'); 
set(handles.text1,'String',textString);
else
textString = '';
textString =strcat(textString,'1'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end



% --- Executes on button press in button2.
function button2_Callback(hObject, eventdata, handles)
% hObject    handle to button2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'2'); 
set(handles.text1,'String',textString);
else
textString = '';
textString =strcat(textString,'2'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end



% --- Executes on button press in button3.
function button3_Callback(hObject, eventdata, handles)
% hObject    handle to button3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'3'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'3'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end


% --- Executes on button press in button4.
function button4_Callback(hObject, eventdata, handles)
% hObject    handle to button4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'4'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'4'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end


% --- Executes on button press in button5.
function button5_Callback(hObject, eventdata, handles)
% hObject    handle to button5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'5'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'5'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end



% --- Executes on button press in button6.
function button6_Callback(hObject, eventdata, handles)
% hObject    handle to button6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'6'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'6'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end



% --- Executes on button press in button7.
function button7_Callback(hObject, eventdata, handles)
% hObject    handle to button7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'7'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'7'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end



% --- Executes on button press in button8.
function button8_Callback(hObject, eventdata, handles)
% hObject    handle to button8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'8'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'8'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end

% --- Executes on button press in button9.
function button9_Callback(hObject, eventdata, handles)
% hObject    handle to button9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'9'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'9'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end



% --- Executes on button press in button0.
function button0_Callback(hObject, eventdata, handles)
% hObject    handle to button0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE %after equal,use to clear the textString
global AFO
if AFE~=1
textString = get(handles.text1,'String'); 
textString =strcat(textString,'0'); 
set(handles.text1,'String',textString);
AFO=0;
else
textString = '';
textString =strcat(textString,'0'); 
set(handles.text1,'String',textString);
AFE=0;
AFO=0;
end


% --- Executes on button press in dot.
function dot_Callback(hObject, eventdata, handles)
% hObject    handle to dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFO
global AFD %after dot, use to avoid multiply dots in one number.
textString = get(handles.text1,'String'); 
if isempty(textString)&&AFO==0&&AFD==0;
    textString =strcat(textString,'0.'); 
    set(handles.text1,'String',textString);
    AFO=1;
    AFD=1;
elseif AFO==0&&AFD==0;
    textString =strcat(textString,'.'); 
    set(handles.text1,'String',textString);
    AFO=1;
    AFD=1;
end





% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE
global AFO
global AFD
textString = get(handles.text1,'String'); 
if isempty(textString)&&AFO==0;
    textString =strcat(textString,'0+'); 
    set(handles.text1,'String',textString);%Something wrong here.
    AFE=0; 
    AFO=1;
    AFD=0;
elseif AFO==0
    textString =strcat(textString,'+'); 
    set(handles.text1,'String',textString);
    AFE=0;
    AFO=1;
    AFD=0;
end


% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE
global AFO
global AFD
textString = get(handles.text1,'String'); 
if isempty(textString)&&AFO==0
    textString =strcat(textString,'0-'); 
    set(handles.text1,'String',textString);%Something wrong here.
    AFE=0; 
    AFO=1;
    AFD=0;
elseif AFO==0
    textString =strcat(textString,'-'); 
    set(handles.text1,'String',textString);
    AFE=0;
    AFO=1;
    AFD=0;
end



% --- Executes on button press in mutiply.
function mutiply_Callback(hObject, eventdata, handles)
% hObject    handle to mutiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE
global AFO
global AFD
textString = get(handles.text1,'String'); 
if isempty(textString)&&AFO==0
    textString =strcat(textString,'0*'); 
    set(handles.text1,'String',textString);%Something wrong here.
    AFE=0; 
    AFO=1;
    AFD=0;
elseif AFO==0
    textString =strcat(textString,'*'); 
    set(handles.text1,'String',textString);
    AFE=0;
    AFO=1;
    AFD=0;
end



% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE
global AFO
global AFD
textString = get(handles.text1,'String'); 
if isempty(textString)&&AFO==0
    textString =strcat(textString,'0/'); 
    set(handles.text1,'String',textString);%Something wrong here.
    AFE=0;
    AFO=1;
    AFD=0;
elseif AFO==0
    textString =strcat(textString,'/'); 
    set(handles.text1,'String',textString);
    AFE=0; 
    AFO=1;
    AFD=0;
end


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AFE
global AFO
global AFD
textString = get(handles.text1,'String'); 
[N,O]=split(textString);
answer=calculate(N,O);
set(handles.text1,'String',answer);
AFE=1;
AFO=0;
AFD=0;




% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text1,'String','');
