a, b, c = gets.chomp.split(" ").map(&:to_i)
ary = []
ary << a+b
ary << a+c
ary << b+c

puts ary.min