program Soal3;

var
  N, pilihan, angka: integer;

begin
  writeln('Program Deret Angka');
  write('Masukkan N: ');
  readln(N);

  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori: ');
  readln(pilihan);

  angka := 1;

  while angka <= N do
  begin
    if (pilihan = 1) and (angka mod 2 = 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    if (pilihan = 2) and (angka mod 2 <> 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    if angka mod 5 = 0 then
    begin
      angka := angka + 1;
      continue;
    end;

    write(angka, ' ');
    angka := angka + 1;
  end;

  writeln;
end.
