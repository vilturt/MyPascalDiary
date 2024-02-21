program myPascalDiary(outfile);
uses sysutils;
var
    outfile:text;
    writtenEntry: String;
    YY,MM,DD: Word;
    selection: char;
    userQuit: Boolean;
begin
    userQuit := false;
    while userQuit = false do
    begin
      assign(outfile, 'entries.txt');
      append(outfile);
      writeln('Type an entry to the diary.');
      readln(writtenEntry);
      DeCodeDate (date,YY,MM,DD);
      writeln(outfile,(format ('%d/%d/%d',[dd,mm,yy])));
      writeln(outfile);
      write(outfile,writtenEntry);
      writeln(outfile);
      write(outfile,'----end-of-an-entry----');
      writeln(outfile);
      close(outfile);
      writeln('Do you want to make another entry? (type "y" to coninue, else to quit)');
      readln(selection);
      if (selection = 'y') then
      begin
        writeln('You chose to make another entry.');
        userQuit := false;
      end
      else
      begin
        writeln('Now quitting...');
        userQuit := true;
      end;
    end;
end.


