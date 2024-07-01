n = gets.to_i
a = gets.split.map(&:to_i)
b = []
a.each_with_index{ |aa, i|
  if i.odd?
    b.push(aa)
  else
    b.unshift(aa)
  end
}
b.reverse! if n.even?

puts b * " "

