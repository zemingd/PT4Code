# coding: utf-8
s = gets.chomp

# 文字列の中に"01"か"10"の場所を探す
# 見つかったら、その位置の2文字を除いた文字列を返すその時にansを+2カウントアップ

ans = 0
def news(str, i)
  str[0, i] + str[i+2, str.size]
end

loop do
  i = s.index('10')
  i = s.index('01') if i.nil?
  break if i.nil?
  s = news(s, i)
  ans += 2
end

puts ans
