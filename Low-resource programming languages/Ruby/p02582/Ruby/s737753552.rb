s = gets.chomp
puts 0 if s == "SSS"
puts 1 if s == "RSS" || s == "SRS" || s == "SSR" || s == "RSR"
puts 2 if s == "RRS" || s == "SRR"
puts 3 if s == "RRR"
