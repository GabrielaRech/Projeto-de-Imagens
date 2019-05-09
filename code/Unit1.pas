unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'alpaca.bmp');
  BitBtn2.Enabled := false;
  BitBtn2.font.Color := clBlack;
  BitBtn3.Enabled := false;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'gato.bmp');
  BitBtn3.Enabled := false;
  BitBtn1.Enabled := false;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'tartaruga.bmp');
  BitBtn2.Enabled := false;
  BitBtn1.Enabled := false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  BitBtn1.Enabled := true;
  BitBtn2.Enabled := true;
  BitBtn3.Enabled := true;
end;

end.
