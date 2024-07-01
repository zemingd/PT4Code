input = gets
a,b,c = input.split.map(&:to_i)
puts b/a > c ? c : b/a