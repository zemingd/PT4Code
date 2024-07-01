a,b,c = gets.split.map(&:to_i)

ans = c - a + b
if ans <= 0
  puts 0
else
  puts ans
end