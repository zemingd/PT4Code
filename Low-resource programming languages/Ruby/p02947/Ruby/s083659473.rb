n = gets.to_i

strings = {}

n.times do
  s = gets.chomp.chars.sort.join
  strings[s] = strings[s] ? strings[s] + 1 : 1
end

puts strings.map{|key, value| (value * (value - 1)) / 2 }.inject(:+)