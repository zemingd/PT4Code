s = gets.chomp.chars.map(&:to_i)

ans = s.length
2.times do |i|
  a = i
  b = 0
  s.each do |j|
    b += 1 if a != j
    a = (a-1).abs
  end
  ans = [ans, b].min
end
p ans