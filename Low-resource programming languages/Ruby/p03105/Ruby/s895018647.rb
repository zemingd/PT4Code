A,B,C = gets.chomp.split.map(&:to_i)

puts [(B/A).floor, C].min
