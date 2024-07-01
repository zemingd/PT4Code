a, b, c, k = gets.split.map(&:to_i)

ans = 0

k -= a
# a枚からk枚全部取って終わり
if k <= 0
  ans += k
else
  # aまい全部取る
  ans += a
  k -= b
  # -1点を残りのk枚だけ取る必要がある
  if k > 0
    ans -= k
  end
end

puts ans