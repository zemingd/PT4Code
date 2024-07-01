N = gets.chomp.to_i
DS = gets.chomp.split.map(&:to_i)

puts (DS.inject(0, &:+)**2 - DS.map { |i| i**2 }.inject(0, &:+)) / 2
