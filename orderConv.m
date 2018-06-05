function [a, orderOfConv]=orderConv (f , df , x0 , tol )

iter = 0;
error = zeros(iter,1);
err = Inf;

disp('iter ............ x ............ |x(n+1)-x(n)| ')

while (err>tol)
    x1=x0-f(x0)./df(x0);
    err=abs(x1-x0);
    x0=x1;
    iter=iter+1;
	error(iter) = err;
	if iter > 2
        orderOfConv(iter-2) = log(abs(error(iter)/error(iter-1)))/log(abs(error(iter-1)/error(iter-2)));
        fprintf('%+15.6e \n', orderOfConv(iter-2));
    end	
    a(1:iter)=x0;

    fprintf('%2.0f %+65.55e %+15.6e \n', iter, x0, err);
end