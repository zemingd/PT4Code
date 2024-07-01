N, x = gets.strip.split(/ /).collect{|n| n.to_i}
as = gets.strip.split(/ /).collect{|n| n.to_i}


as = as.sort

count = 0

a_get = []
a_zero = []

as.each{|a|
	if a <= x
		count += 1
		x -= a
		a_get << a
	else
		a_zero << a
	end
}

if x > 0
	a_get.each{|a|
		a_zero.each{|b|
			if a + x == b
				x = 0
				break
			end
		}
		if x == 0
			break
		end
	}
end

if x > 0 && count > 0 && a_zero.length == 0
	count -= 1
end

puts count


