n, k = gets.split.map(&:to_i)
enemies = gets.split.map(&:to_i).sort
enemies_total = 0

if n > k
  enemies_total = enemies[0..n-k-1].inject(:+)
end

puts enemies_total

