a,b = gets.chomp.split(' ').map(&:to_i)
result = []
result << (a.to_s)*b
result << (b.to_s)*a
puts result.sort.first
