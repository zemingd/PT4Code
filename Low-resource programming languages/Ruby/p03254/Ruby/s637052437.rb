N, x = gets.strip.split(/ /).collect{|n| n.to_i}
as = gets.strip.split(/ /).collect{|n| n.to_i}


as = as.sort

count = 0
as.each{|a|
	if a <= x
		count += 1
		x -= a
	else
		break
	end
}

if x > 0 && count > 0
	count -= 1
end

puts count


