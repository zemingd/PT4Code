while str = gets do
  a, b = str.chomp.split(" ")
  break if a == "0" && b == "0"
  puts b + " " + a
end