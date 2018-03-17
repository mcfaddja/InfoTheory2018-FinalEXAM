function [ msgOut ] = decodeMsgWords( msgWordsIn )
%DECODEMSG Summary of this function goes here
%   Detailed explanation goes here

%msgWordsIn = [0,0,0,0,1,0]

gMat = [1,0,1,0,1,1; 0,1,1,1,0,1; 0,1,1,0,1,0];
hMat = mod( null(gMat,'r'), 2)';

testList = combvec([0,1],[0,1],[0,1]);
testList=testList';
testCode=mod(testList*gMat, 2);

decodeTBL = syndtable(hMat);

synd = mod(msgWordsIn * hMat', 2);
synd_dec = bi2de(synd,'left-msb');

correctionVec = decodeTBL(1+synd_dec,:);

correctedInput = mod(correctionVec + msgWordsIn, 2);

%msgOut = correctedInput(1,1:3);
%msgOut = correctedInput

[~,c]=ismember(correctedInput,testCode,'rows');
msgOut = testList(c,:)

end

