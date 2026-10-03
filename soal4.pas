program Soal4;

var
  pilihan: integer;
  a, b, hasil: real;
  aInt, bInt: integer;
  ulang: char;

begin
  repeat
    writeln;
    writeln('KALKULATOR');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');

    write('Pilih operasi: ');
    readln(pilihan);

    case pilihan of

      1:
        begin
          write('Masukkan angka pertama: ');
          readln(a);
          write('Masukkan angka kedua: ');
          readln(b);

          hasil := a + b;
          writeln('Hasil = ', hasil:0:2);
        end;

      2:
        begin
          write('Masukkan angka pertama: ');
          readln(a);
          write('Masukkan angka kedua: ');
          readln(b);

          hasil := a - b;
          writeln('Hasil = ', hasil:0:2);
        end;

      3:
        begin
          write('Masukkan angka pertama: ');
          readln(a);
          write('Masukkan angka kedua: ');
          readln(b);

          hasil := a * b;
          writeln('Hasil = ', hasil:0:2);
        end;

      4:
        begin
          write('Masukkan angka pertama: ');
          readln(a);
          write('Masukkan angka kedua: ');
          readln(b);

          if b <> 0 then
          begin
            hasil := a / b;
            writeln('Hasil = ', hasil:0:2);
          end
          else
            writeln('Tidak dapat membagi dengan nol.');
        end;

      5:
        begin
          write('Masukkan bilangan pertama: ');
          readln(aInt);
          write('Masukkan bilangan kedua: ');
          readln(bInt);

          if bInt <> 0 then
          begin
            writeln('Hasil DIV = ', aInt div bInt);
            writeln('Hasil MOD = ', aInt mod bInt);
          end
          else
            writeln('Tidak dapat membagi dengan nol.');
        end;

    else
      writeln('Pilihan tidak valid.');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi?(Y/T) ');
    readln(ulang);

  until (ulang = 'T') or (ulang = 't');
end.