a, b, c, k = gets.split.map(&:to_i)

ans = 0

k -= a
# a枚からk枚全部取って終わり
if k <= 0
  puts k
  exit
end
# aまい全部取る
ans += a

k -= b
# b枚からk枚全部取って終わり
if k <= 0
  puts ans
  exit
end

# -1のカードを取る必要がある
ans -= k

puts ans