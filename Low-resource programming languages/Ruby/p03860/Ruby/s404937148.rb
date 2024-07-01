s = gets.chomp.split.map &:chars

puts s.map(&:first).join
