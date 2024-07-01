A,B,C,D = gets.split.map(&:to_i)

puts [[B,D].min - [A,C].max, 0].max