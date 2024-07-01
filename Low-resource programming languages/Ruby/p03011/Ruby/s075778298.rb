*pqr = gets.chomp.split(" ").map(&:to_i)

puts pqr.sort.first(2).inject(&:+)
