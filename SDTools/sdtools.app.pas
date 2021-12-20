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
  sdtools.form.message;

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
    procedure BCPanel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
    procedure BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure BCPanel1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
    procedure cancelClick(Sender: TObject);
    procedure start1Click(Sender: TObject);
    procedure startclick(Sender: TObject);
    procedure BCButton4Click(Sender: TObject);
    procedure BCDButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure timecountTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    timecounting: longint;
    formPos: TPoint;
    isdown: boolean;
    ison: boolean;
    function gettime(): string;
    function GetMode(): string;
    function getmodename(): string;
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
  self.Left := 5;
  self.Top := (screen.Height - Self.Height);
  { message }
  //message._ShowMessage('lưu ý thời gian trên máy phải đặt đùng, ko thì còn cái nịt:))');
end;

procedure TForm1.timecountTimer(Sender: TObject);
begin
  self.timecounting := timecounting - 1;
  clock1.Caption := IntToStr(self.timecounting);
  if self.timecounting = 20 then
  begin
    message._ShowMessage('máy tính của bạn sẽ ' + getmodename +
      ' trong 20 giây nữa, hay lưu mọi thứ trước khi quá trình tắt máy diễn ra');
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  clock.Caption := timetostr(Time());
end;

function TForm1.gettime(): string;
var
  Count: longint;
  Atime: Ttime;
begin
  if (StrToInt(hour.Text) < StrToInt(splitstring(timetostr(time()), ':')[0])) or (StrToInt(minute.Text) <=
    StrToInt(SplitString(TimeToStr(time()), ':')[1])) then
  begin
    Atime := strtotime(hour.Text + ':' + minute.Text + ':00');
    Count := secondsBetween(strtotime('00:00:00'), time);
    Count := Count + secondsbetween(strtotime('00:00:00'), Atime);
    if (StrToInt(hour.Text) <= StrToInt(splitstring(timetostr(time()), ':')[0])) then
    begin
      message._ShowMessage('máy tính ' + GetModeName + ' vào ngày mai');
    end;
  end
  else
  begin
    Atime := strTodatetime(hour.Text + ':' + minute.Text + ':00');
    Count := secondsBetween(time(), Atime);
  end;
  Result := IntToStr(Count);
end;

function TForm1.GetMode(): string;
begin
  case mode.Text of
    'shutdown': Result := '-s';
    'restart': Result := '-r';
  end;
end;

function TForm1.getmodename(): string;
begin
  case mode.Text of
    'shutdown': Result := 'tắt';
    'restart': Result := 'khởi động lại';
  end;
end;

procedure TForm1.BCButton4Click(Sender: TObject);
var
  s: string;
begin
  if (self.ison = true) then
  begin
    runcommand('shutdown.exe', ['-a'], s);
    message._ShowMessage('đã hủy quá trình tắt máy', 1);
  end else Self.Close;
end;

procedure TForm1.startclick(Sender: TObject);
var
  s: string;
begin
  if (compareSTR(hour.Text, '') = 0) or (compareStr(minute.Text, '') = 0) then
  begin
    message._ShowMessage('thời gian ' + getmodename + ' chưa đc xác định');
    exit();
  end;

  if (StrToInt(gettime) <= 20) then
  begin
    message._ShowMessage('thời gian tối thiểu để tắt máy phải lớn hơn 20s');
    exit();
  end;

  if (compareStr(mode.Text, '') = 0) then
  begin
    message._ShowMessage('chọn 1 chế độ tắt trước khi khởi động SDTools');
    exit();
  end;

  Runcommand('shutdown', [getMode, '-t', gettime()], s);
  ison := True;
  message._ShowMessage('máy tính sẽ ' + getmodename + ' sau ' + GetTime + ' giây nx,');
  self.timecounting := StrToInt(gettime);
  timecount.Enabled := True;
  cancel.Enabled := True;
  start.Enabled := False;
end;

procedure TForm1.cancelClick(Sender: TObject);
var
  s: string;
begin
  RunCommand('shutdown.exe', ['-a'], s);
  message._ShowMessage('đã hủy quá trình tắt máy');
  clock1.Caption := '';
  ison := False;
  cancel.Enabled := False;
  start.Enabled := True;
  timecount.Enabled := False;
end;

procedure TForm1.start1Click(Sender: TObject);
begin
  form3.Show;
  form3.left := self.Left;
  form3.top := self.top;
end;

procedure TForm1.BCPanel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  formPos.x := x;
  FormPos.y := y;
  isdown := True;
end;

procedure TForm1.BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
begin
  if isdown = True then
  begin
    self.left := mouse.CursorPos.X - formPos.X;
    self.Top := mouse.CursorPos.y - formPos.y;
  end;
end;

procedure TForm1.BCPanel1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  isdown := False;
end;

procedure TForm1.BCDButton2Click(Sender: TObject);
begin
  self.windowstate := wsMinimized;
end;

end.
