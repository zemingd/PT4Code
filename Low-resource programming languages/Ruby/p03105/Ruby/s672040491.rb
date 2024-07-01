a, b, c = gets.chomp.split(" ").map(&:to_i)
d = b /a

if (d > c)
  print("#{c}\n")
else
  print("#{d}\n")
end