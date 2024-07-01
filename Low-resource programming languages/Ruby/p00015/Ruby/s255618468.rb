
a = gets.chomp!.to_i

a.times{
	b = gets
	c = gets
	if((b.to_i+c.to_i).to_s.length > 80)
		puts "overflow"
	else
		puts b.to_i+c.to_i
	end
}