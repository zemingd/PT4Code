s = gets.chomp.gsub("/", "").to_i

puts s <= 20190430 ? "Heisei" : "TDB"