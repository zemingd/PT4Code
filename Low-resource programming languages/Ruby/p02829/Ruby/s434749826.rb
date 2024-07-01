a, b = gets.strip.split.map(&:to_i)

array = [1,2,3]
array.shift(a).shift(b)
puts array.first
