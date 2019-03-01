program hugefilecreator;

uses Math, SysUtils;

var i,j:int64;
    f:text;
    lines:int64;
    chars:int64;
    character:char;

begin

  lines:=1;
  chars:=round(power(1024, 3));
  character:='0';

  write('Mehet? ');
  readln;
  writeln('Biztos? ', ((chars*lines) div (sqr(1024))), ' MB meretu lesz a file!');
  readln;

  assignfile(f, 'hugefile.txt');
  rewrite(f);

  for i:=1 to LINES do begin
    for j:=1 to CHARS do begin
      write(f, CHARACTER);
    end;
    writeln(f);
  end;

  writeln(LINES, ' sor, soronkent ', CHARS, ' db: ', CHARACTER);
  readln;
end.

