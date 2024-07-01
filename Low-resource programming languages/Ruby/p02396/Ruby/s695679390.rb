a=gets.chomp.split(" ").map{|str| str.to_i}
n=1
a.each do |i|
	if i==0
		break;
	end
	puts"Case #{n}: #{i}"
end