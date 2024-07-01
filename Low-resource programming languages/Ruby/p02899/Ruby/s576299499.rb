N = gets.to_i
As = gets.split.map(&:to_i)
puts As.sort.map { |a| As.index(a) + 1 }.join(' ')
