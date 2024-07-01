s = gets.chomp
res = 3
if s == "RRR"
  res = 3
elsif s == "SRR" || s == "RRS"
  res = 2
elsif s == "SSS"
  res = 0
else
  res = 1
end
puts res