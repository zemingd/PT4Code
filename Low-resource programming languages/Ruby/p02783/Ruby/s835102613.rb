h , a = gets.split.map(&:to_i)
if a >= h
  puts "1"
else
  t = h % a
  puts t == 0 ? t: t+1
end