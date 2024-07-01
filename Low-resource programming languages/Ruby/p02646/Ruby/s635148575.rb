a, v = gets.split.map(&:to_f)
b, w = gets.split.map(&:to_f)
t = gets.to_i

if w - v == 0
  puts 'NO'
elsif w > v
  puts 'NO'
elsif t >= (a - b).abs / (v - w)
  puts 'YES'
else
  puts 'NO'
end