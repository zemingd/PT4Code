a, b = gets.strip.split.map(&:to_i)

array = [1,2,3]
output = array.shift(a).shift(b)
puts output.first
