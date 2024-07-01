n, a, b = gets.chomp.split.map(&:to_i)

# 端に行かないと一緒にできない
if (a + b) % 2 != 0
  min_t, max_t = [a, b].sort
  if min_t < n - max_t
    # nテーブルに行くほうが早い
    puts (n - min_t)
  else
    puts (max_t - 1)
  end
else
  c = (a - b).abs / 2
  puts (c - a).abs
end