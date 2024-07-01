n,m = gets.split.map &:to_i
as = gets.split.map &:to_i
as_h = as.map{ |x| x / 2}

r_lcm = as_h.inject(:lcm)

if as_h.count{ |x| (r_lcm / x) % 2 == 0} > 0 then
	puts 0
else
	puts m / r_lcm - m / (r_lcm * 2)
end