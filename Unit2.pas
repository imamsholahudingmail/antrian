unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.MPlayer, Vcl.ComCtrls, Vcl.Samples.Spin, Vcl.Grids, Vcl.Samples.Calendar;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    MediaPlayer1: TMediaPlayer;
    Timer1: TTimer;
    ProgressBarAntri: TProgressBar;
    ProgressBarPutarNomor: TProgressBar;
    ProgressBarCounter: TProgressBar;
    SpinEdit1: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ProgressBarRatus: TProgressBar;
    Label8: TLabel;
    ProgressBarPuluh: TProgressBar;
    Label9: TLabel;
    Label10: TLabel;
    Calendar1: TCalendar;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    suara, meja:word;
    urutan: integer;

    procedure putarnomor(angka:integer);
    procedure panggil;
    procedure counter;
    procedure SuaraMeja;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormResize(Sender: TObject);
begin
  panel4.Height:= Form2.ClientHeight div 2;
  Panel8.Width := panel4.Width div 2;
  Panel9.Width := Panel5.Width div 2;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  suara:=0;
end;

procedure TForm2.panggil;
begin
  MediaPlayer1.Close;
  MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'antrian.wav';
  caption:=MediaPlayer1.FileName;
  MediaPlayer1.Open;
  ProgressBarAntri.Position := 0;
  ProgressBarAntri.Max := MediaPlayer1.Length;
  MediaPlayer1.Play;
  Timer1.Enabled := True;
  suara:=1;
  urutan:=SpinEdit1.Value;

end;

procedure TForm2.putarnomor(angka:integer);
begin
  case angka of
  0:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'nol.wav';
  1:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'satu.wav';
  2:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'dua.wav';
  3:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tiga.wav';
  4:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'empat.wav';
  5:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'lima.wav';
  6:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'enam.wav';
  7:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tujuh.wav';
  8:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'delapan.wav';
  9:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'sembilan.wav';
  10:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'sepuluh.wav';
  11:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'sebelas.wav';
  12:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'duabelas.wav';
  13:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tigabelas.wav';
  14:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'empatbelas.wav';
  15:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'limabelas.wav';
  16:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'enambelas.wav';
  17:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tujuhbelas.wav';
  18:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'delapanbelas.wav';
  19:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'sembilanbelas.wav';
  20:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'duapuluh.wav';
  30:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tigapuluh.wav';
  40:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'empatpuluh.wav';
  50:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'limapuluh.wav';
  60:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'enampuluh.wav';
  70:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tujuhpuluh.wav';
  80:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'delapanpuluh.wav';
  90:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'sembilanpuluh.wav';
  100:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'seratus.wav';
  200:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'duaratus.wav';
  300:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tigaratus.wav';
  400:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'empatratus.wav';
  500:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'limaratus.wav';
  600:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'enamratus.wav';
  700:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tujuhratus.wav';
  800:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'delapanratus.wav';
  900:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'sembilanratus.wav';
  end;

  caption:=MediaPlayer1.FileName;
  MediaPlayer1.Open;
  ProgressBarPutarNomor.Position := 0;
  ProgressBarPutarNomor.Max := MediaPlayer1.Length;
  ProgressBarPuluh.Position := 0;
  ProgressBarPuluh.Max := MediaPlayer1.Length;
  ProgressBarRatus.Position := 0;
  ProgressBarRatus.Max := MediaPlayer1.Length;
  MediaPlayer1.Play;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  meja:=1;
  panggil;
  Label1.Caption := IntToStr(urutan);
  SpinEdit1.Value :=SpinEdit1.Value+1;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  meja:=1;
  panggil;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  meja:=2;
  panggil;
  Label2.Caption := IntToStr(urutan);
  SpinEdit1.Value :=SpinEdit1.Value+1;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  meja:=2;
  panggil;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  meja:=3;
  panggil;
  Label3.Caption := IntToStr(urutan);
  SpinEdit1.Value :=SpinEdit1.Value+1;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  meja:=3;
  panggil;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  meja:=4;
  panggil;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
  meja:=4;
  panggil;
  Label4.Caption := IntToStr(urutan);
  SpinEdit1.Value :=SpinEdit1.Value+1;
end;

procedure TForm2.counter;
begin
  MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'counter.wav';
  caption:=MediaPlayer1.FileName;
  MediaPlayer1.Open;
  ProgressBarCounter.Position := 0;
  ProgressBarCounter.Max := MediaPlayer1.Length;
  MediaPlayer1.Play;
end;

procedure TForm2.SuaraMeja;
begin
  case meja of
  1:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'satu.wav';
  2:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'dua.wav';
  3:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'tiga.wav';
  4:MediaPlayer1.FileName:= ExtractFilePath( Application.ExeName )+'wav\' + 'empat.wav';
  end;
  caption:=MediaPlayer1.FileName;
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var bilangan : integer;
begin
  Panel3.Caption := FormatDateTime('hh:mm:ss',Time);
  Calendar1.CalendarDate :=Date;
  case meja of
  1:bilangan:=StrToInt(label1.Caption);
  2:bilangan:=StrToInt(label2.Caption);
  3:bilangan:=StrToInt(label3.Caption);
  4:bilangan:=StrToInt(label4.Caption);
  end;

  Label10.Caption := 'Suara : '+IntToStr(suara);
  if (suara = 1) and (ProgressBarAntri.Max <> 0) then ProgressBarAntri.Position := MediaPlayer1.Position;
  if (suara = 3) and (ProgressBarRatus.Max <> 0) then ProgressBarRatus.Position := MediaPlayer1.Position;
  if (suara = 4) and (ProgressBarPuluh.Max <> 0) then ProgressBarPuluh.Position := MediaPlayer1.Position;
  if (suara = 5) and (ProgressBarPutarNomor.Max <> 0) then ProgressBarPutarNomor.Position := MediaPlayer1.Position;
  if (suara = 6) and (ProgressBarCounter.Max <> 0) then ProgressBarCounter.Position := MediaPlayer1.Position;

  if (suara = 1) and (ProgressBarAntri.Position = ProgressBarAntri.Max) and ((bilangan >=100) and (bilangan<1000)) then          //antrian  habis
  begin
     if IntToStr(bilangan)[1] = '1' then putarnomor(100);
     if IntToStr(bilangan)[1] = '2' then putarnomor(200);
     if IntToStr(bilangan)[1] = '3' then putarnomor(300);
     if IntToStr(bilangan)[1] = '4' then putarnomor(400);
     if IntToStr(bilangan)[1] = '5' then putarnomor(500);
     if IntToStr(bilangan)[1] = '6' then putarnomor(600);
     if IntToStr(bilangan)[1] = '7' then putarnomor(700);
     if IntToStr(bilangan)[1] = '8' then putarnomor(800);
     if IntToStr(bilangan)[1] = '9' then putarnomor(900);
     suara:=3;
  end;

  if (suara = 3) and ((IntToStr(bilangan)[2] = '0')and(IntToStr(bilangan)[3] = '0')) and (ProgressBarRatus.Position = ProgressBarRatus.Max) and ((bilangan >=100) and (bilangan<1000)) then          //antrian  habis
  begin
     suara:=5;
  end else
  if (suara = 3) and ((IntToStr(bilangan)[2] = '0')or(IntToStr(bilangan)[2] = '1')) and (ProgressBarRatus.Position = ProgressBarRatus.Max) and ((bilangan >=100) and (bilangan<1000)) then          //antrian  habis
  begin
     if IntToStr(bilangan)[2]='0' then putarnomor(StrToInt(IntToStr(bilangan)[3]));
     if IntToStr(bilangan)[2]='1' then putarnomor(StrToInt(IntToStr(bilangan)[2]+IntToStr(bilangan)[3]));
     suara:=5;
  end else
  if (suara = 3) and (ProgressBarRatus.Position = ProgressBarRatus.Max) and ((bilangan >=100) and (bilangan<1000)) then          //antrian  habis
  begin
     if IntToStr(bilangan)[2] = '2' then putarnomor(20);
     if IntToStr(bilangan)[2] = '3' then putarnomor(30);
     if IntToStr(bilangan)[2] = '4' then putarnomor(40);
     if IntToStr(bilangan)[2] = '5' then putarnomor(50);
     if IntToStr(bilangan)[2] = '6' then putarnomor(60);
     if IntToStr(bilangan)[2] = '7' then putarnomor(70);
     if IntToStr(bilangan)[2] = '8' then putarnomor(80);
     if IntToStr(bilangan)[2] = '9' then putarnomor(90);
     suara:=4;
  end;

  if (suara = 4) and (ProgressBarPuluh.Position = ProgressBarPuluh.Max) and ((bilangan >=100) and (bilangan<1000)) then          //antrian  habis
  begin
     if IntToStr(bilangan)[3] = '1' then putarnomor(1);
     if IntToStr(bilangan)[3] = '2' then putarnomor(2);
     if IntToStr(bilangan)[3] = '3' then putarnomor(3);
     if IntToStr(bilangan)[3] = '4' then putarnomor(4);
     if IntToStr(bilangan)[3] = '5' then putarnomor(5);
     if IntToStr(bilangan)[3] = '6' then putarnomor(6);
     if IntToStr(bilangan)[3] = '7' then putarnomor(7);
     if IntToStr(bilangan)[3] = '8' then putarnomor(8);
     if IntToStr(bilangan)[3] = '9' then putarnomor(9);
     suara:=5;
  end;



  if (suara = 1) and (ProgressBarAntri.Position = ProgressBarAntri.Max) and (bilangan in[21..99]) then          //antrian  habis
  begin
     if IntToStr(bilangan)[1] = '2' then putarnomor(20);
     if IntToStr(bilangan)[1] = '3' then putarnomor(30);
     if IntToStr(bilangan)[1] = '4' then putarnomor(40);
     if IntToStr(bilangan)[1] = '5' then putarnomor(50);
     if IntToStr(bilangan)[1] = '6' then putarnomor(60);
     if IntToStr(bilangan)[1] = '7' then putarnomor(70);
     if IntToStr(bilangan)[1] = '8' then putarnomor(80);
     if IntToStr(bilangan)[1] = '9' then putarnomor(90);
     suara:=4;
  end;

  if (suara = 4) and (ProgressBarPuluh.Position = ProgressBarPuluh.Max) and (bilangan in[21..99]) then          //antrian  habis
  begin
     if IntToStr(bilangan)[2] = '1' then putarnomor(1);
     if IntToStr(bilangan)[2] = '2' then putarnomor(2);
     if IntToStr(bilangan)[2] = '3' then putarnomor(3);
     if IntToStr(bilangan)[2] = '4' then putarnomor(4);
     if IntToStr(bilangan)[2] = '5' then putarnomor(5);
     if IntToStr(bilangan)[2] = '6' then putarnomor(6);
     if IntToStr(bilangan)[2] = '7' then putarnomor(7);
     if IntToStr(bilangan)[2] = '8' then putarnomor(8);
     if IntToStr(bilangan)[2] = '9' then putarnomor(9);
     suara:=5;
  end;


  if (suara = 1) and (ProgressBarAntri.Position = ProgressBarAntri.Max) and (bilangan <=20) then          //antrian  habis
  begin
     putarnomor(bilangan);
     suara:=5;
  end;


  if ProgressBarPutarNomor.Position = ProgressBarPutarNomor.Max then         //putar nomor habis
  begin
     if suara=5 then
     begin
       counter;
       suara:=6;
     end;
  end;

  if ProgressBarCounter.Position = ProgressBarCounter.Max then
  begin
     if suara=6 then
     begin
       SuaraMeja;
       suara:=7;
     end;
  end;

end;

end.
