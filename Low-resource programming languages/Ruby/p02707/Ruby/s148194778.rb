n = gets.chomp.to_i
boss_numbers = gets.chomp.split(" ").map(&:to_i)

n.times do |t|
  puts boss_numbers.count(t+1)
end