a = gets.split.map(&:to_i)
b = a.sort
puts b[0].to_s * b[1]