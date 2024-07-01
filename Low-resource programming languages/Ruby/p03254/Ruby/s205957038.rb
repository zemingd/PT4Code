_n, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
puts as.sort.map { |a|
  if x >= a
    x -= a
    1
  else
    0
  end
}.inject(:+)
