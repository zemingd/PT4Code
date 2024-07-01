s = gets.chomp

if s == "RRR"
  puts 3
elsif s == "SRR" || s == "RRS"
  puts 2
elsif s == "SSS"
  puts 0
else
  puts 1
end
