gMat = [1,0,1,0,1,1; 0,1,1,1,0,1; 0,1,1,0,1,0]

gMatP = mod( rref( mod( null(gMat,'r')', 2) ), 2)

hMatP = mod( rref( mod( null(gMatP,'r'), 2)' ), 2)

mod(gMatP*(hMatP'),2)