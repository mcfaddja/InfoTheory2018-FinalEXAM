gMat = [1,0,1,0,1,1; 0,1,1,1,0,1; 0,1,1,0,1,0]
hMat = mod( null(gMat,'r')', 2)

tmpGmat=gMat';
msgWords = unique(combvec(tmpGmat(1,:),tmpGmat(2,:),tmpGmat(3,:),tmpGmat(4,:),tmpGmat(5,:),tmpGmat(6,:))','rows')