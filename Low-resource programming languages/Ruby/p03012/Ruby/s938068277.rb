N = gets.to_i
w_list = gets.split.map(&:to_i)
ans = (0...(N - 1)).map do |i|
  (w_list[0..i].reduce(&:+) - w_list[(i + 1)..-1].reduce(&:+)).abs
end.min
puts ans
