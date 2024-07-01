puts (1..gets.to_i)
  .map {|i| gets.chomp.split(" ") << i}
  .sort_by {|a, b| [a, -b.to_i]}
  .map(&:last)