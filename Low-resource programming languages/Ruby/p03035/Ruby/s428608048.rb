a,b = gets.chomp.split.map(&:to_i)
if a >=13
  print("#{b}\n")
end
if a <= 12 && a >= 6
  print("#{b/2}\n")
end

if a <= 5
  print("#{0}\n")
end