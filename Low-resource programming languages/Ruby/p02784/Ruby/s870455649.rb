h, n = gets.split.map(&:to_i)
attacks = gets.split.map(&:to_i)

total_attack = attacks.inject(:+)

if total_attack < h
  puts 'No'
else
  puts 'Yes'
end