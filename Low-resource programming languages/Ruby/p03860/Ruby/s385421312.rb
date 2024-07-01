a, s, c = gets.chomp.split

puts [a, s, c].map(&:upcase).map { |s| s[0] }.join
