f = @(x) x^3-3*x-20;
x0 = 6;
x1 = 2;
tol = 0.0001;
max_iter = 10;

fprintf('Iterasi 0: x0 = %.6f, x1 = %.6f\n', x0, x1);
iter = 0;
while iter <= max_iter
    x = x1 - (f(x1) * (x0 - x1)) / (f(x0) - f(x1));
    if abs(x - x1) < tol
        fprintf('Akar perkiraan: %.6f\n', x);
        break;
    end
    fprintf('Iterasi %d: x = %.6f, f(x) = %.6f\n', iter+1, x, f(x));
    x0 = x1;
    x1 = x;
    
    iter = iter + 1;
end

if iter > max_iter
    warning('Metode Sekan tidak konvergen setelah %d iterasi', max_iter);
end
