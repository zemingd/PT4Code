n, m = gets.split.map(&:to_i)
n_sum = n > 1 ? n * (n - 1) / 2 : 0
m_sum = m > 1 ? m * (m - 1) / 2 : 0
puts n_sum + m_sum
