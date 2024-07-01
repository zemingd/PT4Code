aryAlphabetCount = Array.new(26,0);
strAlphabet = "abcdefghijklmnopqrstuvwxyz";

while true do
 
	inputLines = gets;
 
	if inputLines == nil || inputLines.length == 0 then
		break;
	end
 
	checkStr = inputLines.downcase;
	
	for checkStrIndex in 0..checkStr.length-1 do
		for alphabetIndex in 0..strAlphabet.length-1 do
			
			if checkStr[checkStrIndex] == strAlphabet[alphabetIndex] then
				
				aryAlphabetCount[alphabetIndex] += 1;
		end
			
		end
	end
end

for index in 0..aryAlphabetCount.length-1 do
	
	puts strAlphabet[index] + " : " + aryAlphabetCount[index].to_s
end