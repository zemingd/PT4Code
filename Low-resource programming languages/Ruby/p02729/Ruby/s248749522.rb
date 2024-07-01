n, m = gets.split.map(&:to_i)

ans = 0
ans += n * (n - 1) if n >= 2
ans += m * (m - 1) if m >= 2
puts ans / 2
