a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

if (a - b).abs <= t * (v - w)
  puts 'YES'
else
  puts 'NO'
end

