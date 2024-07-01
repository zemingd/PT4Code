x, k, d = gets.strip.split.map(&:to_i)
x = x.abs

# 全力で近づくパターン
if x > (k * d)
  puts(x - (k * d))

# 反復横飛びするパターン
else
  div = x / d
  if (k - div).even?
    puts(x - (div * d))
  else
    puts((x - ((div + 1) * d)).abs)
  end
end
