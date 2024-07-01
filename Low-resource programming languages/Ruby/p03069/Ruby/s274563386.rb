# 入力
n = gets.chomp.to_i
s = gets.chomp

min = s.count(".")
n.times do |i|
  tmp = s[0..i].count("#") + s[(i+1)..-1].count(".")
  min = [tmp, min].min
end

# 出力
puts min

