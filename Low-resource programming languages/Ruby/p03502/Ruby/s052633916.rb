##入力は以下の形式で標準入力から与えられる。
##N
str = gets.chomp
n = str.to_i

##整数 Xを十進法で表したときの各桁の数字の和を f(X)としたとき、
##Xが f(X)で割り切れる場合、 Xはハーシャッド数です。
##整数 Nが与えられるので、ハーシャッド数かどうか判定してください。

##制約
##1 ≦ N ≦ 10^8
##入力は全て整数

a_v = str.split("").map(&:to_i)
val = 0
a_v.each do |v|
  val += v
end
# p val

##Nがハージャッド数ならば Yes を、そうでなければ No を出力せよ。
if n % val == 0
  puts 'Yes'
else
  puts 'No'
end