n,a,b = gets.strip.split(' ').map(&:to_i)
result = -1
result = n * a
result = b if b < result
puts result
