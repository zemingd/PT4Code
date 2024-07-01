a, b = gets.split.map(&:to_i)
fig = a < b ? '<' : a > b ? '>' : '=='
puts "a #{fig} b"