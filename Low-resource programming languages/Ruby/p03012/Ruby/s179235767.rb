n = gets.to_i
ws = gets.split.map(&:to_i)

ans = 10 ** 20
(0..n-2).each do |i|
  ans = [ans, (ws[0..i].inject(:+) - ws[(i+1)..n-1].inject(:+)).abs].min
end
puts ans