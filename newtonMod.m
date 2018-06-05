function output = newtonMod (f , df , ddf, x0 , tol )


iter = 0;
err = Inf;
output = zeros(iter, 1);

while (err>tol)
    x1=x0-(f(x0)*df(x0))./((df(x0))^2-f(x0)*ddf(x0));
    err=abs(x1-x0);
    if err>tol
        x0=x1;
        iter=iter+1;
        output(1:iter)=x0;
        fprintf('%2.0f %+65.55e %+15.6e \n', iter, x0, err);
    end
end