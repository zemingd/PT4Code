S = gets.chomp

ans = Float::INFINITY

S.chars.each_cons(3) do |a, b, c|
  num = [a, b, c].join.to_i
  diff = (753 - num).abs
  ans = [ans, diff].min
end

puts ans
