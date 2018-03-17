gMat = [1,0,1,0,1,1; 0,1,1,1,0,1; 0,1,1,0,1,0]
hMat = mod( null(gMat,'r')', 2)

tmpGmat=gMat';
msgWords = unique(combvec(tmpGmat(1,:),tmpGmat(2,:),tmpGmat(3,:),tmpGmat(4,:),tmpGmat(5,:),tmpGmat(6,:))','rows')

syndromes=mod(hMat*(msgWords'),2)'
[C, ia, ic] = unique(syndromes,'rows');
synds_cnts = accumarray(ic,1);
value_cnts = [C, synds_cnts]

errS=[zeros([1,6]); eye(6,6)]
%hMat*errS

for i=1:8
    for j=1:7
        StdArray(i,:,j)=mod( errS(j,:)+msgWords(i,:), 2)
    end
end

for i=1:8
    for j=1:7
        StdArrSynds(i,:,j)=mod( hMat*(StdArray(i,:,j)'),2 )
    end
end