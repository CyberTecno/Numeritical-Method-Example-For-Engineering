g = @(x) 5/(exp(0.5*x)+1.2);
x0 = 1;
e = 0.000001;
imax = 100; % Harus banyak agar bisa melihat solusi ditemukan di iterasi ke-berapa
i_last = 0; % Variabel untuk melihat iterasi terakhir (saat mendapatkan solusi)

for i = 1:imax
    x1 = g(x0);
    fprintf('x%d = %.4f\n', i, x1)
    if abs(x1 - x0) < e || abs(g(x1)) < e % Cek apakah toleransi sudah melebihi batas
        i_last = i;
        break; % Hentikan iterasi jika salah satu kondisi terpenuhi
    end
    x0 = x1;
end

fprintf('Solusi ditemukan pada iterasi ke-%d\n', i_last);
