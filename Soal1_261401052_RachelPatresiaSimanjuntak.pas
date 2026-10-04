program soal1;
var 
N, i: integer;
harga, totalsebelumdiskon, diskon, totalbayarakhir: real;
persendiskon: integer;

begin
    writeln('Toko Buku');
    write('Masukkan jumlah barang: ');
    readln(N);

    totalsebelumdiskon := 0;
    writeln;
    writeln('Rincian Belanja ');

    for i:= 1 to N do 
    begin
        write('Masukkan harga barang ke-', i, ':Rp');
        readln(harga);
        totalsebelumdiskon:= totalsebelumdiskon + harga;
    end;
    if totalsebelumdiskon < 100000 then
    begin
        diskon := 0;
    end
    else if totalsebelumdiskon <= 50000 then
    begin
        diskon := 0.1 * totalsebelumdiskon;
    end
    else 
    begin
        diskon := 0.2 * totalsebelumdiskon;
    end;
    totalbayarakhir := totalsebelumdiskon - diskon;
    writeln;
    writeln('Rincian Pembayaran:');
    writeln('Total Sebelum Diskon: Rp', totalsebelumdiskon:0:2);
    writeln('Diskon: Rp', diskon:0:2);
    writeln('Total Bayar Akhir: Rp', totalbayarakhir:0:2);
end.
