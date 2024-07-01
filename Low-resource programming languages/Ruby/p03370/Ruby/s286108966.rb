N, X = gets.split.map(&:to_i)
m_list = N.times.map { gets.to_i }

sum = m_list.reduce(&:+)
rest = X - sum
ans = N + (rest / m_list.min)
puts ans
