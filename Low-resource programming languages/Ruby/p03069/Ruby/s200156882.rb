# 入力
n = gets.chomp.to_i
s = gets.chomp

arr = []
arr << s.count(".")
n.times do |i|
  arr << s[0..i].count("#") + s[(i+1)..-1].count(".")
end

# 出力
puts arr.min

