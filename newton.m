function newton (f , df , x0 , tol )

iter = 0;
err = Inf;

disp('iter ............ x ............ |x(n+1)-x(n)| ')

while (err>tol)
    x1=x0-f(x0)./df(x0);
    err=abs(x1-x0);
    x0=x1;
    iter=iter+1;
    fprintf('%2.0f %+65.55e %+15.6e \n', iter, x0, err)
end