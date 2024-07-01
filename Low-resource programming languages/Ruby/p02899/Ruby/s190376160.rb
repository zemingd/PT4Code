N = gets.to_i
As = gets.split.map(&:to_i)

ans = As
  .map
  .with_index(1) { |a, i| [a, i] }
  .sort
  .map { |(a, i)| i }
  .join(' ')

puts ans
