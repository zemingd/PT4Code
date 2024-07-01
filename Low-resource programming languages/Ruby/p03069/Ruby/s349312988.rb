n = gets.chomp.to_i
s = gets.chomp
 
 
count1 = 0
# 右からみて最初に出てくる.を見つける
n.times do |i|
  if s[s.length - i - 1] == "." then
    # それ以前を全て.にする
    count1 += s[0..(s.length-i-1)].count("#")
    break
  end
end
 
count2 = 0
# 左からみて最初に出てくる#を見つける
n.times do |i|
  if s[i] == "#" then
    # それ以降を全て#にする
    count2 += s[(i+1)..-1].count(".")
    break
  end
end
 
puts [count1, count2].min
 