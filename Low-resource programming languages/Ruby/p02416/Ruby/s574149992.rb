while true do
 
	inputLines = gets;
 
	if inputLines == "0" then
		break;	
	end
 
	sum = 0;
	aryChars = inputLines.chars;
 
	for charIndex in 0..aryChars.length-1 do
 
		sum += aryChars[charIndex].to_i;
 
	end
 
	puts sum.to_s;
end