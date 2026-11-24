program AntreanKantin;
var 
    orang: array[1..100] of integer;
    i, N, total: integer;
    rata: Real;
begin 
    readln(N);

    total:=0;

    for i:=1 to N do 
    begin
        read(orang[i]);
        write(' ');
        total:= total + orang[i];
    end;
    writeln;

    for i:=1 to N do
    begin
        writeln('Orang ', i, ': ', orang[i], ' menit');
    end;

    rata := total/N;
    writeln('Rata-rata: ', rata);
end.