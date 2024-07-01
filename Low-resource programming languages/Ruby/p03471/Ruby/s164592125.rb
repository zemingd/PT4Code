n, y = gets.split(" ").map(&:to_i)
count = 0
results = [-1, -1, -1]
# 大域脱出
catch(:break_loop) do
  break if 1000 * n > y
  break if 10000 * n < y
  (0..n).each do |m|
    next if 5000 * n + 10000 * m < y
    (0..n).each do |t5|
      next if 1000 * n + 5000 * t5 + 10000 * m < y
      (0..n).each do |t1|
        count = m + t5 + t1
        break if count > n
        if (10000 * m + 5000 * t5 + 1000 * t1) == y && count == n
          results = [m, t5, t1]
          throw :break_loop
        end
      end
    end
  end
end
print results.join(' ')
