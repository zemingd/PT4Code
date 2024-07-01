s = gets.chomp
if s == "RRR"
  puts 0
elsif s == "SSS"
  puts 3
elsif s == "RRS" || s == "SRR"
  puts 2
else
  puts 1
end 