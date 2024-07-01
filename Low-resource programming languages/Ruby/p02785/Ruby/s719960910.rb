n, k = gets.split.map(&:to_i)
monsters = gets.split.map(&:to_i)

if k >= monsters.size
  puts 0
else
  monsters.sort!.reverse!.shift(k)
  puts monsters.inject(:+)
end