unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Btn00: TButton;
    Btn01: TButton;
    Btn02: TButton;
    Btn03: TButton;
    Btn04: TButton;
    Btn05: TButton;
    Btn06: TButton;
    Btn07: TButton;
    Btn08: TButton;
    Btn09: TButton;
    BtnResultado: TButton;
    BtnSoma: TButton;
    Button1: TButton;
    Button2: TButton;
    BtnDiv: TButton;
    edtVisor: TEdit;
    BtnClear: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Btn00Click(Sender: TObject);
    procedure Btn01Click(Sender: TObject);
    procedure Btn02Click(Sender: TObject);
    procedure Btn03Click(Sender: TObject);
    procedure Btn04Click(Sender: TObject);
    procedure Btn05Click(Sender: TObject);
    procedure Btn06Click(Sender: TObject);
    procedure Btn07Click(Sender: TObject);
    procedure Btn08Click(Sender: TObject);
    procedure Btn09Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSomaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BtnDivClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnResultadoClick(Sender: TObject);
  private
    { Private declarations }
    //Declarar Function, procedures  e variaveis para ser usado apenas nesse fonte

    valor_atual : double;
    operacao : integer;
    limpar : boolean;

  public
    //Declarar Function, procedures  e variaveis para ser usado em todos os fonte do projeto
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Btn00Click(Sender: TObject);
begin

  //Se a variavel limpar for falsa, que é oq colocamos no OnCreate vai executar o comando abaixo.
  if limpar then

  begin
    //Se a variavel estiver ''true'' vou limpar o conteudo do visor.
    edtVisor.Text := '';
    //Volto a variavel limpar a ser falsa para continuar digitando valor.
    limpar := false;
  end;
  if edtVisor.Text = '0' then

  begin
    edtVisor.Text := '';
  end;
  //Visor recebe o valor ja contido no visor + o proximo botao clicado, neste caso o 0
  edtVisor.Text := edtVisor.Text + '0';

end;

procedure TForm1.Btn01Click(Sender: TObject);
begin

  if limpar then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;

  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '1';

end;

procedure TForm1.Btn02Click(Sender: TObject);
begin
  if limpar then
  begin
  edtVisor.Text := '';
  limpar := false;
   end;

  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '2';

end;

procedure TForm1.Btn03Click(Sender: TObject);
begin
  if limpar then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;
  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '3';
end;

procedure TForm1.Btn04Click(Sender: TObject);
begin
  if limpar then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;
    if edtVisor.Text = '0' then
    begin
      edtVisor.Text := '';
    end;
    edtVisor.Text := edtVisor.Text + '4';
end;

procedure TForm1.Btn05Click(Sender: TObject);
begin
  if limpar then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;
  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '5';
end;

procedure TForm1.Btn06Click(Sender: TObject);
begin
  if limpar then
  begin
  edtVisor.Text := '';
  limpar := false;
  end;
  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '6'

end;

procedure TForm1.Btn07Click(Sender: TObject);
begin
  if limpar then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;
  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '7';
end;

procedure TForm1.Btn08Click(Sender: TObject);
begin
  if limpar then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;
  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '8';
end;

procedure TForm1.Btn09Click(Sender: TObject);
begin
  if limpar then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;
  if edtVisor.Text = '0' then
  begin
    edtVisor.Text := '';
  end;
  edtVisor.Text := edtVisor.Text + '9';
end;


procedure TForm1.BtnResultadoClick(Sender: TObject);
begin
  if operacao = 1 then
  begin
    valor_atual := valor_atual + StrToFloat(edtVisor.Text);

  end else if operacao = 2 then
  begin
    valor_atual := valor_atual - StrToFloat(edtVisor.Text);

  end else if operacao = 3 then
  begin
    valor_atual := valor_atual * StrToFloat(edtVisor.Text);

  end else if operacao = 4 then
  begin
    valor_atual := valor_atual / StrToFloat(edtVisor.Text);
  end;
  limpar := true;
  edtVisor.Text := FloatToStr(valor_atual);
end;

procedure TForm1.BtnSomaClick(Sender: TObject);
begin
  operacao := 1;
  limpar := true;
  valor_atual := StrToFloat(edtVisor.Text);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  operacao := 2;
  limpar := true;
  valor_atual := StrToFloat(edtVisor.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  operacao := 3;
  limpar := true;
  valor_atual := StrToFloat(edtVisor.Text);
end;


procedure TForm1.BtnDivClick(Sender: TObject);
begin
  operacao := 4;
  limpar := true;
  valor_atual := StrToFloat(edtVisor.Text);
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  valor_atual := 0;
  edtVisor.Text := '0';
  operacao := 0;
  limpar := true;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
       operacao  := 0;
       valor_atual := 0;
       limpar := false;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '0' then
  begin
    btn00.Click;
  end;
    if key = '1' then
  begin
    btn01.Click;
  end;
  if key = '2' then
  begin
    btn02.Click;
  end;
  if key = '3' then
  begin
    btn03.Click;
  end;
  if key = '4' then
  begin
    btn04.Click;
  end;
  if key = '5' then
  begin
    btn05.Click;
  end;
  if key = '6' then
  begin
    btn06.Click;
  end;
  if key = '7' then
  begin
    btn07.Click;
  end;
  if key = '8' then
  begin
       btn08.Click;
  end;
       if key = '9' then
  begin
       btn09.Click;
  end;
  end;

end.
