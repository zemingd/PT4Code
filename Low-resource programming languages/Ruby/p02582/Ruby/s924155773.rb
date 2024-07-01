S = gets.chomp

if S == "RRR" then
  puts 3
elsif S == "RRS" or S == "SRR" then
  puts 2
elsif S == "RSS" or S == "SRS" or S == "SSR" or S == "RSR" then
  puts 1
else
  puts 0
end