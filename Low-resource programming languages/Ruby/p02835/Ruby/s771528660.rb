a = gets.split.map(&:to_i)
puts 'bust' if a.sum > 21
puts 'win' if a.sum <= 21
