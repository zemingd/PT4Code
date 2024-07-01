# frozen_string_literal: true

# 愚直にやればいい気がする
# ↑無能 ..#..#...#..は7
# なので初めて#が出てきたら以降はもう駄目
n = gets.chomp.to_i
s = gets.chomp.chars

ans = 0
flag = false
(1...n).to_a.each do |i|
  if flag && s[i] == '.'
    ans += 1
  elsif s[i - 1] == '#' && s[i] == '.'
    ans += 1
    flag = true
  end
end
puts ans
