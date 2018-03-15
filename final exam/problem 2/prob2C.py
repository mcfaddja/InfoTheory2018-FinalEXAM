mINIT = 3
m = mINIT

numToDo = 5
#numToDo = 15

endM = mINIT + numToDo


for i in range(mINIT, endM):
	n = 2**m - 1
	k = n - m
	
	R = (1.0 * k) / n
	
	print("m = " + str(m) + ".  :      [ " + str(n) + ",  " + str(k) + " ]         -   R = " + str(R))
	
	m += 1
