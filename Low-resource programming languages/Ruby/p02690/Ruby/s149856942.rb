x = gets.to_i
pows = Array.new(1000){|i| i ** 5}
pows.each_index{|b|
	u = x + pows[b]
	a = pows.find_index{|a5| a5.abs == u}
	if a != nil
		puts "#{u > 0 ? a : -a} #{b}"
		break
	end
	u = x - pows[b]
	a = pows.find_index{|a5| a5.abs == u}
	if a != nil
		puts "#{u > 0 ? a : -a} #{-b}"
		break
	end
}