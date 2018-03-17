function [ msgWordsOut ] = genMsgWords( msgIn )
%genMsgWords Generates the codeword corresponing to the provided message
%   Takes a 1x3 binary array and generates the corresponding 1x6 codeword 
%       as a binary array 

gMat = [1,0,1,0,1,1; 0,1,1,1,0,1; 0,1,1,0,1,0];

msgWordsOut = mod(msgIn * gMat, 2);






end

