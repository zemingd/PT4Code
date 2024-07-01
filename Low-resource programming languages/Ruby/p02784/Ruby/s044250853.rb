hp, n = gets.split.map(&:to_i)

atks = gets.split.map(&:to_i).sort.reverse
atks.each do |atk|
  hp -= atk
end

if hp > 0
  puts "No"
else
  puts "Yes"
end