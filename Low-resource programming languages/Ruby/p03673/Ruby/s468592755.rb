n = gets.to_i
a = gets.split.map(&:to_i)
b = []
a.each{ |aa|
 b << aa
 b.reverse!
}

puts b * " "

