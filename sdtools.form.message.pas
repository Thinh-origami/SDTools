unit sdtools.form.message;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, BCPanel, BGRALabel,
  BCLabel, BGRALabelFX, BCButton;

type

  { Tmessage }

  Tmessage = class(TForm)
    BCButton4: TBCButton;
    BCPanel1: TBCPanel;
    messager: TBGRALabel;
    start1: TBCButton;
    procedure BCButton4Click(Sender: TObject);
    procedure BCPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BCPanel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure start1Click(Sender: TObject);
  private
    isdown : boolean;
    formpos : Tpoint;
  public
    procedure showmessage(Ames : string);
  end;

var
  message: Tmessage;

implementation

{$R *.frm}

{ Tmessage }

procedure Tmessage.FormCreate(Sender: TObject);
begin
  isdown := false;
  self.Left := (screen.width div 2) - (self.Width div 2);
  self.Top := (screen.height div 2) - (self.Height div 2);
end;

procedure Tmessage.start1Click(Sender: TObject);
begin
  messager.Caption := 'SDTools V2.5';
end;

procedure Tmessage.BCPanel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  formpos.x := x;
  formpos.y := y;
  isdown := true;
end;

procedure Tmessage.BCButton4Click(Sender: TObject);
begin
  self.close;
end;

procedure Tmessage.BCPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if isdown = true then
  begin
    self.left := mouse.CursorPos.X - formpos.x;
    self.top := mouse.CursorPos.y - formpos.y;
  end;

end;

procedure Tmessage.BCPanel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  isdown := false;
end;

procedure Tmessage.showmessage(Ames: string);
begin
  messager.caption := Ames;
  self.Left := (screen.width div 2) - (self.Width div 2);
  self.Top := (screen.height div 2) - (self.Height div 2);
  self.show();
end;

end.

