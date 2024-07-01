s = gets.chomp.split('').map(&:to_i)
c1, c2 = 0, 0

s.each_with_index do |e, i|
  c1 += 1 if e == [0, 1][i % 2]
  c2 += 1 if e == [1, 0][i % 2]
end

puts [c1, c2].min
