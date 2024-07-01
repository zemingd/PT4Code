n = gets.to_i
table = Hash.new(0)

n.times do
  word = gets.chomp.split('').sort.inject(:+)
  table[word] += 1
end

puts table.values.map{|n| n * (n-1) / 2}.inject(:+)