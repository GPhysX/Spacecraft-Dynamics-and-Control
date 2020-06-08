function [t,y] = LinearInt(dydxfun, tspan, ic)
 n_vars = max([size(ic, 1); size(ic, 2)]);       % number of vars
    if size(ic, 1) >= size(ic, 2)
        y = [ic'; nan(length(tspan)-1,n_vars)];
    else
        y = [ic; nan(length(tspan)-1,n_vars)];
    end
    t = tspan';
    h = tspan(end) - tspan(end-1);      % step size
     for i=1:(length(tspan)-1)
         k_1 = dydxfun(t(i),y(i,:));
         if size(k_1, 1) >= size(k_1, 2)
            k_1 = k_1';
        end
         y(i+1,:) = y(i,:) +h*k_1;
     end
end

