sa = 0
puts gets.to_i.times.map{
	gets.split.map(&:to_i)
}.sort_by{|_,b| b }.all?{|a,b|
	sa += a
	sa <= b
}?'Yes':'No'
