function Xs = NewtonRoot(Fun,FunDer,Xest,Err,imax)
Fun=@(x) 8.0-4.5*(x-sin(x));
FunDer=@(x) -4.5*(1-cos(x));
Xest=2.0;
Err=1.0e-4;
imax=10;

for i=1:imax
    Xi=Xest-Fun(Xest)/FunDer(Xest);
    if abs((Xi-Xest)/Xest)<Err
        Xs=Xi;
        break
    end
    Xest=Xi;
end
if i == imax
    fprintf('Solution was not obtained in %i iteration. \n', imax)
    Xs=('No answer');
end


