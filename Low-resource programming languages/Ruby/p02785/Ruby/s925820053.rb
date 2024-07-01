n , k = gets.split.map(&:to_i)
enemies = gets.split.map(&:to_i).sort{|x,y|y <=> x}
# p enemies
# binding.pry
if enemies.size > k
  puts enemies[k...enemies.size].inject(:+)
else
  puts "0"
end