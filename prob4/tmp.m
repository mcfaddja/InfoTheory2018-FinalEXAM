gMat = randi([0 1], 20, 30)
gMat0 = gMat;
gMat = mod(rref(gMat0),2)
gMat = mod(rref(gMat0,'r'),2)
rank(gMat0)
rref
gMat = mod(rref(gMat0),2)
hMat0=mod(null(gMat0,'r'),2)'
hMat0=rem(null(gMat0,'r'),2)'
hMat0=mod(null(gMat0, 'r'),2)'
hMat0=null(gMat0, 'r')'
hMat=null(gMat0, 'r')'
gMat = mod(rref(gMat0),2)
gMat = mod(rref(gMat0,1),2)
gMat = mod(rref(gMat0,0),2)
gMat = mod(rref(gMat0,1.),2)