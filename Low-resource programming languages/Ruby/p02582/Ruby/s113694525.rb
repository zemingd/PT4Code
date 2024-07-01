s = gets.chomp.split('S')

result = s.map(&:length).max
puts result.to_i
