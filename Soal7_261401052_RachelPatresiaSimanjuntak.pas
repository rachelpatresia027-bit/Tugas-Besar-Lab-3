program Soal7;

var
  kode: char;
  jam: integer;
  tarif: integer;

begin
  writeln('PROGRAM TARIF PARKIR');

  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);

  write('Masukkan lama parkir (jam): ');
  readln(jam);

  case kode of

    'M', 'm':
      begin
        if jam > 10 then
          tarif := 30000
        else if jam = 1 then
          tarif := 5000
        else
          tarif := 5000 + ((jam - 1) * 3000);

        writeln('Jenis kendaraan: Mobil');
      end;

    'K', 'k':
      begin
        if jam > 10 then
          tarif := 10000
        else if jam = 1 then
          tarif := 2000
        else
          tarif := 2000 + ((jam - 1) * 1000);

        writeln('Jenis kendaraan: Motor');
      end;

    'B', 'b':
      begin
        if jam > 10 then
          tarif := 50000
        else if jam = 1 then
          tarif := 10000
        else
          tarif := 10000 + ((jam - 1) * 5000);

        writeln('Jenis kendaraan: Bus');
      end;

  else
    begin
      writeln('Kode kendaraan tidak valid.');
      halt;
    end;

  end;

  writeln('Total tarif parkir: Rp', tarif);
end.
