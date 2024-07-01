h,a = gets.chomp.split(" ").map(&:to_i);

ans =0
loop{
	h = h-a
	ans += 1
	if h<=0 then
	 	 puts ans
	 	 exit
	 end
}
