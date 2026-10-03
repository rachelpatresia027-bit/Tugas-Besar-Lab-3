program Soal6;

var
  tugas, uts, uas, kehadiran: real;
  nilaiAkhir: real;
  indeks: char;

begin
  writeln('PENENTUAN NILAI AKHIR');

  write('Masukkan Nilai Tugas (30%): ');
  readln(tugas);

  write('Masukkan Nilai UTS (30%): ');
  readln(uts);

  write('Masukkan Nilai UAS (40%): ');
  readln(uas);

  write('Masukkan Kehadiran (%): ');
  readln(kehadiran);

  nilaiAkhir := (tugas * 0.30) +
                (uts * 0.30) +
                (uas * 0.40);

  { Menentukan indeks huruf }
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf : ', indeks);

  { Menentukan status kelulusan }
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    writeln('Status : LULOS')
  else
    writeln('Status : TIDAK LULOS');
end.