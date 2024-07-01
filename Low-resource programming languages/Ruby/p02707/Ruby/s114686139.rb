n = gets.chomp.to_i
boss_numbers = gets.chomp.split(" ").map(&:to_i)
res = []
n.times do |t|
  res[t]=0
end
boss_numbers.each do |t|
  res[t-1]+=1
end
puts res