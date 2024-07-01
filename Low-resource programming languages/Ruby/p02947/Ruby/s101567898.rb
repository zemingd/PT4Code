n = gets.to_i
strings = Hash.new(-1)

n.times do
  key = gets.chomp.chars.sort.join
  strings[key] += 1
end

puts strings.values.inject(:+)
