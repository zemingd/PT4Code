a, b = gets.split.map(&:to_i)
a1 = (a * 12.5).to_i
a2 = ((a + 1) * 12.5).to_i
b1 = b * 10
b2 = (b + 1) * 10
r = -1
(a1...a2).each do |i|
  if (b1...b2).include?(i)
    r = i
    break
  end
end
puts r