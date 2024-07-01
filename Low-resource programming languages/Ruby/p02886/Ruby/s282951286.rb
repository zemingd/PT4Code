gets.to_i
arr = gets.chomp!.split.map(&:to_i)

puts arr.combination(2).map { |a| a.first * a.last }.sum
