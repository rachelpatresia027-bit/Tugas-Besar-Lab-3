program soal2;

var
  password, passwordRahasia: string;
  percobaan: integer;
  berhasil: boolean;

begin
  passwordRahasia := 'pascal123';
  percobaan := 0;
  berhasil := false;

  repeat
    percobaan := percobaan + 1;

    write('Masukkan kata sandi: ');
    readln(password);

    if password = passwordRahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
    end
    else
    begin
      writeln('Kata sandi salah!');
      writeln('Sisa percobaan: ', 3 - percobaan);
    end;

  until (berhasil = true) or (percobaan = 3);

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
readln;
end.