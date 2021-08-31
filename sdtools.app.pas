unit sdtools.app;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ComCtrls, EditBtn, BGRACustomDrawn,
  DTAnalogClock, BCButton, BCComboBox, BCLabel,
  BCPanel, sdtools.form.load,
  process, dateUtils, strUtils,
  sdtools.form.info,
  sdtools.form.message
  ;

type

  { TForm1 }

  TForm1 = class(TForm)
    clock1: TBCLabel;
    start: TBCButton;
    cancel: TBCButton;
    BCButton4: TBCButton;
    mode: TBCComboBox;
    hour: TBCComboBox;
    minute: TBCComboBox;
    BCPanel1: TBCPanel;
    clock: TBCLabel;
    DTAnalogClock1: TDTAnalogClock;
    start1: TBCButton;
    Timer1: TTimer;
    timecount: TTimer;
    procedure BCPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BCPanel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure start1Click(Sender: TObject);
    procedure startclick(Sender: TObject);
    procedure BCButton4Click(Sender: TObject);
    procedure BCDButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure timecountTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    timecounting : longint;
    formPos : TPoint;
    isdown : boolean;
    ison : boolean;
    function gettime() : string;
    function GetMode() : string;
    function getmodename() : string;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  //form2.show;
  self.Left := (screen.width div 2) - (self.Width div 2);
  self.Top := (screen.height div 2) - (self.Height div 2);
end;

procedure TForm1.timecountTimer(Sender: TObject);
begin
  self.timecounting := timecounting - 1;
  clock1.Caption := inttostr(self.timecounting);
  if self.timecounting = 20 then
  begin
    message.showmessage('máy tính của bạn sẽ ' + getmodename + ' trong 20 giây nữa, hay lưu mọi thứ trước khi quá trình tắt máy diễn ra');
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  clock.caption := timetostr(Time());
end;

function TForm1.gettime(): string;
var
  e, b : Ttime;
  count : longint;
  Atime : Ttime;
begin
  if (strtoint(hour.text) < strtoint(splitstring(timetostr(time()), ':')[0])) then
  begin
    Atime := strtotime(hour.text + ':' + minute.text+ ':00');
    count := secondsBetween(strtotime('00:00:00'), time);
    count := count + secondsbetween(strtotime('00:00:00'), Atime);
  end else
  begin
    Atime := strTodatetime(hour.text+':' + minute.Text + ':00');
    count := secondsBetween(time(), Atime);
  end;
  result := inttostr(count);
end;

function TForm1.GetMode(): string;
begin
  case mode.Text of
    'shutdown' : result := '-s';
    'restart' : result := '-r';
    'logoff' : result := '-l';
  end;
end;

function TForm1.getmodename(): string;
begin
  case mode.text of
    'shutdown' : result := 'tắt';
    'restart' : result := 'khởi động lại';
    'logoff' : result := 'đăng xuất';
  end;
end;

procedure TForm1.BCButton4Click(Sender: TObject);
begin
  self.close;
end;

procedure TForm1.startclick(Sender: TObject);
var
  s : string;
begin
  if (compareSTR(hour.text, '') = 0) or
     (compareStr(minute.text, '') = 0) then
  begin
    message.showmessage('thời gian ' + getmodename + ' chưa đc xác định');
    exit();
  end;

  if (strtoint(gettime) <= 20) then
  begin
    message.showmessage('thời gian tối thiểu để tắt máy phải lớn hơn 20s');
    exit();
  end;

  if (compareStr(mode.Text, '') = 0) then
  begin
    message.showmessage('chọn 1 chế độ tắt trước khi khởi động SDTools');
    exit();
  end;

  Runcommand('shutdown', [getMode, '-t', gettime()], s);
  ison := true;
  message.ShowMessage('máy tính sẽ '+ getmodename + ' sau ' + gettime + ' giây nx,');
  self.timecounting := strtoint(gettime);
  timecount.enabled := true;
  cancel.enabled := true;
  start.enabled := false;
end;

procedure TForm1.cancelClick(Sender: TObject);
var
  s : string;
begin
  runcommand('shutdown.exe', ['-a'], s);
  message.showmessage('đã hủy quá trình tắt máy');
  clock1.Caption := '';
  ison := false;
  cancel.enabled := false;
  start.enabled := true;
  timecount.enabled := false;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  s : string;
begin
  if ison = true then
  begin
    runcommand('shutdown.exe', ['-a'], s);
    message.showmessage('đã hủy quá trình tắt máy');
    sleep(2000);
    ison := false;
    timecount.enabled := false;
  end;
end;

procedure TForm1.start1Click(Sender: TObject);
begin
  form3.show;
  form3.left := self.Left;
  form3.top := self.top;
end;

procedure TForm1.BCPanel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  formPos.x := x;
  FormPos.y := y;
  isdown := true;
end;

procedure TForm1.BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if isdown = true then
  begin
    self.left := mouse.CursorPos.X - formPos.X;
    self.Top := mouse.CursorPos.y - formPos.y;
  end;
end;

procedure TForm1.BCPanel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  isdown := false;
end;

procedure TForm1.BCDButton2Click(Sender: TObject);
begin
  self.windowstate := wsMinimized;
end;

end.

