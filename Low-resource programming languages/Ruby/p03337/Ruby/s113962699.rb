a,b = gets.split(" ").map(&:to_i)

ka = a + b
ge = a - b
jo = a * b

ary =[ka,ge,jo]
puts ary.max