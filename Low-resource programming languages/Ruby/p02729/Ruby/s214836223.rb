n, m = gets.split.map(&:to_i)
ans_n = n > 1 ? n * (n - 1) / 2 : 0
ans_m = m > 1 ? m * (m - 1) / 2 : 0
ans = ans_n + ans_m
p ans