count = 1;

loop do
	
	num = gets.to_i;
	
	if num == 0 then
		break;
	end
	
	puts "Case " + count.to_s + ": " + num.to_s;
	
	count.next;
	
end