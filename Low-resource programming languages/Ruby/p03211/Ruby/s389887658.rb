ans = Float::INFINITY
LOVE_NUM = 753
gets.chomp.chars.each_cons(3) do |digits|
  ans = [(digits.join.to_i - LOVE_NUM).abs, ans].min
end
puts ans