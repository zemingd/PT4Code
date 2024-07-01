n = gets.to_i
ans = Float::INFINITY

0.upto(n) do |i|
  x = i.to_s(6).each_char.map(&:to_i).sum
  y = (n - i).to_s(9).each_char.map(&:to_i).sum
  ans = [x + y, ans].min
end

puts ans