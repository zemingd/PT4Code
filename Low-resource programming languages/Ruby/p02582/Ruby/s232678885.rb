s = gets.chomp.to_s

if s == "RRR"
  puts 3
elsif s.include?("RR")
  puts 2
elsif s == "SSS"
  puts 0
else puts 1
end