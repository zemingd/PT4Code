n = gets.to_i
a = gets.split.map(&:to_i)
c = 1
for i in a
  c += 1 if c == i
end 
if c == 1
  puts -1
else
  puts n - c + 1
end