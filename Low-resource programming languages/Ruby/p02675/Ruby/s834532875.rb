x = gets.to_i
t = gets.chomp

if x >= t.length
  puts t
else
  puts t[0,x] + "..."
end