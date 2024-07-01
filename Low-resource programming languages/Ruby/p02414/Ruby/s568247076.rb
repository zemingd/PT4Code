aryInputArySize = gets.split.map(&:to_i);
 
n = aryInputArySize[0];
m = aryInputArySize[1];
l = aryInputArySize[2];
 
aryA = Array.new(n){Array.new(m,0)};
aryB = Array.new(m){Array.new(l,0)};
aryC = Array.new(n){Array.new(l,0)};
 
#aryA????????????
for rowIndexAryA in 0..n-1 do
 
	aryInputLinesA = gets.split.map(&:to_i);
 
	for colIndexAryA in 0..m-1 do
 
		aryA[rowIndexAryA][colIndexAryA] = aryInputLinesA[colIndexAryA];
 
	end
end
 
#aryB????????????
for rowIndexAryB in 0..m-1 do
 
	aryInputLinesB = gets.split.map(&:to_i);
 
	for colIndexAryB in 0..l-1 do
 
		aryB[rowIndexAryB][colIndexAryB] = aryInputLinesB[colIndexAryB];
 
	end
end
 
#aryC????????????
for i in 0..n-1 do
	for j in 0..l-1 do
		for k in 0..m-1 do
 
		aryC[i][j] = aryC[i][j] + aryA[i][k] * aryB[k][j];
 
		end
	end
end
 
#aryC??????
for rowIndexAryC in 0..n-1 do
	for colIndexAryC in 0..l-1 do
 
		if colIndexAryC == 0 then
			print aryC[rowIndexAryC][colIndexAryC].to_s;
		else
			print " " + aryC[rowIndexAryC][colIndexAryC].to_s;
		end
 
	end
 
	print "\n";
end

print "\n\r";