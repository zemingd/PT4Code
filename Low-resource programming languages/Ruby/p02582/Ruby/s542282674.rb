s = gets.chomp
if s == "RRR"
  puts 3
elsif s == "SSS"
  puts 0
elsif s == "RRS" || s == "SRR"
  puts 2
else
  puts 1
end 