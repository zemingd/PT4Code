while num=gets.chomp.split(" ").map{|x| x.to_i} do
	if num.empty? == true
		break
	end
	p num.inject{|sum,n| sum+n}.to_s.length
end
