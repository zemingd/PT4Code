aryQuestion = gets.split.map(&:to_i);
 
a = aryQuestion[0];
b = aryQuestion[1];
c = aryQuestion[2];
 
count = 0;
 
for num in a..b do

	modulo = c % num
	
	if modulo == 0 then
	
		count += 1;
		
	end
 
end
 
puts count.to_s;