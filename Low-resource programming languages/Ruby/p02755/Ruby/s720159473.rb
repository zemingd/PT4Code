a, b = gets.chomp.split.map(&:to_i)
res = -1
(1..1000).each do |i|
  a_lb = (0.08 * i).to_i
  b_lb = (0.10 * i).to_i
  break if a_lb > a || b_lb > b
  if a_lb == a && b_lb == b
    res = i
    break
  end
end
puts res