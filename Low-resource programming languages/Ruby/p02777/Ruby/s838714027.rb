s, t = gets.chomp.split
a, b = gets.chomp.split.map(&:to_i)
if s == gets.chomp
  a -= 1
else
  b -= 1
end
puts [a,b].join(" ")
