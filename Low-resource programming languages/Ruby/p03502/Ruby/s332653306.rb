# 整数 X を十進法で表したときの各桁の数字の和を f(X) としたとき、
# X が f(X) で割り切れる場合、X はハーシャッド数です。
# 整数 N が与えられるので、ハーシャッド数かどうか判定してください。

n = gets

sum = 0
n.length.times do |i|
  sum += n[i].to_i
end

if n.to_i % sum == 0
  puts "Yes"
else
  puts "No"
end
