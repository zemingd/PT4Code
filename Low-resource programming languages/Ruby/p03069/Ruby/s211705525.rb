n = gets.chomp.to_i
s = gets.chomp

b_w = [[0, s.count('.')]]
n.times do |i|
  if s[i] == '.'
    b_w << [b_w[-1][0], b_w[-1][1] - 1]
  else
    b_w << [b_w[-1][0] + 1, b_w[-1][1]]
  end
end
puts b_w.map(&:sum).min