s = gets.chomp

if s == "RSR" || s == "RSS" || s == "SSR"
  puts 1
elsif s == "RRR"
  puts 3
elsif s == "SSS"
  puts 0
else
  puts 2
end