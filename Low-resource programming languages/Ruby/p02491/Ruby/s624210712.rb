a,b = gets.split.map(&:to_i)
puts '%d %d %.10f'%[a/b, a%b, 1.0*a/b]