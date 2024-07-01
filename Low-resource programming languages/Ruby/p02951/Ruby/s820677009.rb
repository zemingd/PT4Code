a, b ,c = gets.chomp.split(' ').map(&:to_i)
result = a - b > c ? 0 : c - (a - b)
puts "#{result}\n"