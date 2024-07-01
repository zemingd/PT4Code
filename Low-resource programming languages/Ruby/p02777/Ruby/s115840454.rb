a = gets.chomp.split(" ")
b = gets.split.map(&:to_i)
c = gets.chomp
if c == a[0] 
  b[0] -= 1
else
  b[1] -= 1
end
  puts b.join(" ") 