n,x = gets.split.map &:to_i
ms = []

n.times{ |i|
	ms << gets.to_i
}

puts ms.size + (x - ms.inject(:+)) / ms.min
