unit sdtools.form.info;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, BCButton,
  BCPanel;

type

  { TForm3 }

  TForm3 = class(TForm)
    BCButton4: TBCButton;
    BCPanel1: TBCPanel;
    Memo1: TMemo;
    devinfo: TBCButton;
    note: TBCButton;
    userinfo: TBCButton;
    appinfo: TBCButton;
    procedure appinfoClick(Sender: TObject);
    procedure BCButton4Click(Sender: TObject);
    procedure BCPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BCPanel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure devinfoClick(Sender: TObject);
    procedure noteClick(Sender: TObject);
    procedure userinfoClick(Sender: TObject);
  private
    isdown : boolean;
    formpos : Tpoint;
  public

  end;

var
  Form3: TForm3;

implementation

{$R *.frm}

{ TForm3 }

procedure TForm3.appinfoClick(Sender: TObject);
begin
  showmessage('SDTools V2.5 [Windows]');
end;

procedure TForm3.BCButton4Click(Sender: TObject);
begin
  form3.close;
end;


procedure TForm3.devinfoClick(Sender: TObject);
begin
  memo1.clear;
  memo1.lines[0] := devinfo.Hint;
end;

procedure TForm3.noteClick(Sender: TObject);
begin
  memo1.clear;
  memo1.lines[0] := note.hint
end;

procedure TForm3.userinfoClick(Sender: TObject);
begin
  memo1.clear;
  memo1.lines[0] := 'tên người dùng ' + (sysutils.GetEnvironmentVariable('USERNAME'));

end;

procedure TForm3.BCPanel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  formPos.x := x;
  FormPos.y := y;
  isdown := true;
end;

procedure TForm3.BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if isdown = true then
  begin
    self.left := mouse.CursorPos.X - formPos.X;
    self.Top := mouse.CursorPos.y - formPos.y;
  end;
end;

procedure TForm3.BCPanel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  isdown := false;
end;

end.

