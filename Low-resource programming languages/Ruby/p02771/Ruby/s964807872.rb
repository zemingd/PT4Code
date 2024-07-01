result = "No"
a, b, c = gets.chomp.split.map(&:to_s)
x = []
x << a
x << b
x << c
x.uniq!
result = "Yes" if x.length == 2
puts result
