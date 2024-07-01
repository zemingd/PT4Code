n=gets.chomp.to_i
d=gets.chomp.split(" ").map(&:to_i)
puts d.each_with_index.with_object([]) {|(x,i),obj|
  d.slice(i..-1).each_with_index{|y,j| obj << x*y if i != (i+j) }
}.inject(:+)