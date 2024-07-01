s = gets.chomp

diff = s.chars.each_cons(3).map do |c|
  (753 - c.join.to_i).abs
end.min
puts diff
