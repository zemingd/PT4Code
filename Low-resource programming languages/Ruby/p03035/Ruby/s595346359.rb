a,b = gets.chomp.split.map(&:to_i)
if a >=13
  print("#{b}\n")
elsif a > 6
  print("#{b/2}\n")
else
  print("0\n")
end