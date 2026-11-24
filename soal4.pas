program RaporKelas;
type
    Tsiswa = record
        Nama: string;
        UTS : integer;
        UAS : integer;
    end;
var
    siswa: array[1..50] of Tsiswa;
    N, i: integer;
    rata: array[1..50] of Real;
begin
    readln(N);

    for i:=1 to N do
    begin
        read(siswa[i].Nama); write(' ');
        read(siswa[i].UTS); write(' ');
        read(siswa[i].UAS);

        rata[i] := (siswa[i].UTS + siswa[i].UAS)/2; 
    end;




end.