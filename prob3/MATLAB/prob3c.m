tmpGmat=gMat';
msgWords = unique(combvec(tmpGmat(1,:),tmpGmat(2,:),tmpGmat(3,:),tmpGmat(4,:),tmpGmat(5,:),tmpGmat(6,:))','rows')

wghts = unique(combvec(tmpGmat(1,:),tmpGmat(2,:),tmpGmat(3,:),tmpGmat(4,:),tmpGmat(5,:),tmpGmat(6,:))','rows')*ones([6,1])
[C, ia, ic] = unique(wghts);
wt_cnts = accumarray(ic,1);
value_cnts = [C, wt_cnts]