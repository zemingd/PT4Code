a,b,c,d = gets.split(" ").map(&:to_f)

#高橋君のモンスターが体力0になるまでの攻撃回数
x = (a/d).ceil

#x回目の攻撃で青木君のモンスターが倒れているか判定
if c - b * x <= 0
  puts "Yes"
else
  puts "No"
end