n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)
result = 1
as.each {|item|
  result *=item
  result = -1 and break  if result > 1000000000000000000
  }
puts result
