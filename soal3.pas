program DiskonKafe;
type
    TKonsumen = record
        belanja : Longint;
        member  : char;
        hari    : string;
    end;
var
    konsum: TKonsumen;
    diskon: integer;
    bayar: Real;
begin
    with konsum do 
    begin
        read(belanja); write(' ');
        read(member); write(' ');
        read(hari);
    end;
    writeln;

    if (konsum.belanja >= 100000) then
        diskon := 10
    else diskon := 0;
    if (konsum.member = 'Y') or (konsum.member = 'y') then
        diskon := diskon + 5;
    if (konsum.hari = 'Jumat') or (konsum.hari = 'jumat') then
        begin
            if (diskon > 0) and (diskon <= 12) then
                diskon := diskon
            else diskon := 12;
        end;

    bayar := konsum.belanja - (konsum.belanja*12/100);

    writeln('Diskon: ', diskon);
    writeln('Total Bayar: Rp ', bayar);
end.