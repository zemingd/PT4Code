gets
aaa = gets.split.map(&:to_i).sort#.map{|aa|[aa, false]} # 書き換えたか？

xxx = []
while g = gets&.split&.map(&:to_i)
  g[0].times do
    xxx << g[1]
  end
  # xxx << g
end
xxx.sort_by!{|x|-x}
# pp aaa
# pp xxx

xxx.size.times do |i|
  if aaa[i] && xxx[i] && aaa[i] < xxx[i]
    aaa[i] = xxx[i]
  end
end
# pp aaa


# xxx.each do |x|
#   b.times do |i|
#     if aaa[i][0] < c && aaa[i][1] == false
#       aaa[i][0] = c
#       aaa[i][1] = true
#     end
#   end
# end
sum = 0
aaa.each do |(b, c)|
  sum += b
end
p sum
