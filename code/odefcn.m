function dydt = odefcn(t,y,N,par)

growth = y .* par.r';

glv = y .* (par.a * y);
A=zeros(1,N);

hoi = zeros(N,1);

for i = 1:N
    temp = squeeze(par.b(i,:,:)); 
    hoi(i) = sum(sum(temp .* (y * y'))); 
end

hoi = y .* hoi;


dydt = growth + glv + hoi+par.d;


end














