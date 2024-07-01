while true
 
	aryMondai = gets.split();
 
	num1 = aryMondai[0].to_i;
	op =  aryMondai[1];
	num2 = aryMondai[2].to_i;
 
	if op == "?" then
		break;
	end
 
	if op == "+" then
 
		puts (num1 + num2).to_s;
 
	elsif op == "-" then
 
		puts (num1 - num2).to_s;
 
	elsif op == "*" then
 
		puts (num1 * num2).to_s;
 
	elsif op == "/" then
 
		puts (num1 / num2).to_s;
 
	end
 
end