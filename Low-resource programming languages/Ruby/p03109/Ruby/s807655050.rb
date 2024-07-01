y, m, d = gets.chomp!.split("/").map(&:to_i)

puts m <= 4 ? 'Heisei' : 'TBD'
