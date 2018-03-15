mINIT = 3
m = mINIT

numToDo = 5

endM = mINIT + numToDo


for i in range(mINIT, endM):
	n = 2**m - 1
	k = n - m
	
	print("m = " + str(m) + ".  :      [ " + str(n) + ",  " + str(k) + " ]")
	
	m += 1
