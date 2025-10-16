A = [2 1 -1 2; 1 -2 1 -4; 3 -1 -2 -1; -1 2 1 -2]
b = [0;3;-3;13]
N = length(b); % jumlah nilai x yang tidak diketahui
X = zeros(N,1);
Aug = [A b];
disp('Augmented matrix:');
disp(Aug); % Menampilkan augmented matrix

for j = 1:N-1 %for columns
    for i = j+1:N % for rows
        m = Aug(i,j) / Aug(j,j);
        Aug(i,:) = Aug(i,:) - m * Aug(j,:);
    end
end

disp('Row echelon form of augmented matrix:');
disp(Aug); % Menampilkan bentuk echelon baris dari matriks augmented

X(N) = Aug(N,N+1) / Aug(N,N);
for k = N-1:-1:1
    X(k) = (Aug(k,N+1) - Aug(k,k+1:N) * X(k+1:N)) / Aug(k,k);
end

disp('Solution:');
disp(X); % Menampilkan solusi x1, x2, x3, x4
