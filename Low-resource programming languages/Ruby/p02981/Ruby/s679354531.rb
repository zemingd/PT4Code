n,a,b = gets.chomp.split(" ").map(&:to_i)
if a < b
  print("#{a * n}")
else
  print("#{b * n}")
end