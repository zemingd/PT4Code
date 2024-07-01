S = gets.chomp.to_s

if S == "SSS"
  puts 0
elsif S == "SSR" || S == "SRS" || S == "RSS" || S == "RSR"
  puts 1
elsif S == "RRS" || S == "SRR"
  puts 2
else
  puts 3
end
  