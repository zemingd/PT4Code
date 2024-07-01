# Problem https://atcoder.jp/contests/abc082/tasks/abc082_b
# Ruby 1st Try
sStr = gets.chomp
tStr = gets.chomp
ssStr = sStr.chars.sort.join
tsStr = tStr.chars.sort.reverse.join
if ssStr < tsStr
    puts("Yes")
else
    puts("No")
end
# p ssStr
# p tsStr