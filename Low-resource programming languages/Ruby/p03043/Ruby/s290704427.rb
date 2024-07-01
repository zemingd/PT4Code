num = gets.split.map(&:to_i)
dice = num.first
std_point = num.last

prob = 0.0
(1..dice).each do |i|
  point = i
  tmp_prob = 1.0 / dice.to_f

  while point < std_point do
    point = point * 2
    tmp_prob = tmp_prob * 0.5
  end
  prob += tmp_prob
end

puts prob