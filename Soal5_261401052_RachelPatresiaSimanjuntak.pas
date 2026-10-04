program Soal5;

var
  M, N, i, j: integer;
  nilai, total, rataRata: real;
  jumlahLulus, jumlahTidakLulus: integer;

begin
  writeln('REKAPITULASI NILAI');

  write('Jumlah mahasiswa: ');
  readln(M);

  write('Jumlah tugas: ');
  readln(N);

  jumlahLulus := 0;
  jumlahTidakLulus := 0;

  for i := 1 to M do
  begin
    total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);

      total := total + nilai;
    end;

    rataRata := total / N;

    writeln('Rata-rata: ', rataRata:0:2);

    if rataRata >= 65 then
    begin
      writeln('Status: LULUS');
      jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
      writeln('Status: TIDAK LULUS');
      jumlahTidakLulus := jumlahTidakLulus + 1;
    end;
  end;

  writeln;
  writeln('REKAP AKHIR');
  writeln('Total mahasiswa LULUS       : ', jumlahLulus);
  writeln('Total mahasiswa TIDAK LULUS : ', jumlahTidakLulus);
end.
