n=gets.to_i
x=gets.split.map &:to_i

p (1..100).map{|p|
	s=0
	x.each{|a|s+=(a-p)**2}
	s
}.min