alphas = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];

gMat = zeros(4,14);

for i=1:14
    for j=1:4
        tmp = alphas(i);
        gMat(j,i) = mod(tmp^j,17);
    end
end

hMat = mod( null(gMat,'r'), 17)'