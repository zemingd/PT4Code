n = gets.to_i
pys = n.times.map{gets.chomp.split(" ").map(&:to_i)}.sort_by{|a,b|b}

limit = 0


pys.each do |a, b|
	limit += a
	if b < limit
		puts "No"
		exit
	end
end

puts 'Yes'