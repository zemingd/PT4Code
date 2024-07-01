n,x = gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split(' ').map(&:to_i)

puts strs.map { |num| (num-x).abs }.min