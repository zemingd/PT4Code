while true
	
	aryMondai = gets.split.map(&:to_i);
	
	num1 = aryMondai[0];
	num2 = aryMondai[1];
	
	if num1 == 0 && num2 == 0 then
		break;
	end
	
	if num1 > num2 then
		puts num2.to_s + " " + num1.to_s;
	elsif num1 < num2 then
		puts num1.to_s + " " + num2.to_s;
	else
		puts num1.to_s + " " + num2.to_s;
	end
	
end