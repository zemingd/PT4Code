s = gets.chomp
if s=="RRR"
  puts 3
elsif s=="SRR" || s=="RRS"
  puts 2
elsif s.index("R")
  puts 1
else
  puts 0
end