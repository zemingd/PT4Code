n = gets.chomp.to_i
num = gets.split.map(&:to_i).reverse

num.map do |i|
	print "#{i} "
end

puts