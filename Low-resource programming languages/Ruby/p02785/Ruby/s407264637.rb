n, k = gets.split.map(&:to_i)
hp = gets.split.map(&:to_i).sort

if n <= k
  puts '0'
else
  puts hp[0...n-k].inject(:+)
end