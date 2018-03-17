gMat = [1,0,1,0,1,1; 0,1,1,1,0,1; 0,1,1,0,1,0]
hMat = mod( null(gMat,'r')', 2)

testList = combvec([0,1],[0,1],[0,1])
testMsgs = mod(testList' * gMat,  2)
%unique(testMsgs,'rows')

mod(hMat*(testMsgs'),2);

testMsgs*ones([6,1]);

errS=[zeros([1,6]); eye(6,6)]
%hMat*errS

for i=1:8
    for j=1:7
        StdArray(i,:,j)=mod( errS(j,:)+testMsgs(i,:), 2)
    end
end

for i=1:8
    for j=1:7
        StdArrSynds(i,:,j)=mod( hMat*(StdArray(i,:,j)'),2 )
    end
end
