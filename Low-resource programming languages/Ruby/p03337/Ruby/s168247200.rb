a, b = gets.split.map(&:to_i)
ary = []
ary << a * b
ary << a + b
ary << a - b
puts ary.max