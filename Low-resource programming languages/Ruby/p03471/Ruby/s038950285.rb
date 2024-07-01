n, y = gets.split(" ").map(&:to_i)
count = 0
results = [-1, -1, -1]
# 大域脱出
catch(:break_loop) do
  # 1000円に札数乗じて合計額を超えたらbreak
  break if 1000 * n > y
  # 10000円に札数乗じても合計額に足りなければbreak
  break if 10000 * n < y
  (0..n).each do |t10|
    # 5000円に札数乗じても合計額に達しなければnext
    next if 5000 * (n - t10) + 10000 * t10 < y
    break if t10 > n
    (0..(n - t10)).each do |t5|
      next if 1000 * (n - t10 - t5) + 5000 * t5 + 10000 * t10 < y
      throw :break_loop if t10 + t5 > n
      (0..(n - t10 - t5)).each do |t1|
        count = t10 + t5 + t1
        throw :break_loop if count > n
        if (10000 * t10 + 5000 * t5 + 1000 * t1) == y && count == n
          results = [t10, t5, t1]
          throw :break_loop
        end
      end
    end
  end
end
print results.join(' ')
