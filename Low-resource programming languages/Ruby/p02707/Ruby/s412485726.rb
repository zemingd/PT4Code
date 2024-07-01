n = gets.chomp.to_i
boss_numbers = gets.chomp.split(" ").map(&:to_i)

n.times do |t|
  puts boss_numbers.select{|bn| bn==t+1}.size
end