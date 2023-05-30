procedure tripletsLoop(length: integer; index: integer; var output: String);
var
  n1: cardinal;
  n2: cardinal;
  n3: cardinal;
  result: String;
begin
  if index >= length then
    exit;
  read(n1, n2, n3);
  if ((n1 + n2) > n3) AND ((n1 + n3) > n2) AND ((n2 + n3) > n1) then
    result := '1'
  else
    result := '0';
  output := concat(output,result,' ');
  index += 1;
  tripletsLoop(length, index, output);
end;

procedure arithmeticProgression; {Main}
var
  output: String;
  length: integer;
  index: integer;
begin
  index := 0;
  output := '';
  readln(length);
  tripletsLoop(length, index, output);
  writeln(output);
end;

begin
arithmeticProgression;
end.
