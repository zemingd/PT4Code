n = gets.to_i
a = gets.split.map(&:to_i)
b = []
a.each_with_index{ |_a, i|
  i.odd? ? b.push(_a) : b.unshift(_a)
}
b.reverse! if n.even?
puts b * " "