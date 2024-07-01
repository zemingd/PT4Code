cost, _ = gets.chomp.split.map(&:to_i)
available_nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] - gets.chomp.split.map(&:to_i)

puts cost.to_s.chars.map(&:to_i).map {|n|
  available_nums.drop_while {|an| an < n }.first
}.join