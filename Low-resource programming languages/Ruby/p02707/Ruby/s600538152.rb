n = gets.chomp.to_i
boss_numbers = gets.chomp.split(" ").map(&:to_i)
res = []
boss_numbers.each do |t|
  res[t-1]||=0
  res[t-1]+=1
end
n.times do |t|
  puts res[t] ? res[t] : 0
end