a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i
aa = a + v * t
bb = b + w * t
if aa >= bb
  puts 'YES'
else
  puts 'NO'
end
