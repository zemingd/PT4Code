a, b, c = gets.split.map(&:to_i)
tmp = c - (a - b) 
if tmp >= 0
  puts tmp
else
  puts 0
end