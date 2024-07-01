N, M = gets.split.map &:to_i
p ($<.map{|s|
	a, *b = s.split.map &:to_i
	b
}.inject:&).size
