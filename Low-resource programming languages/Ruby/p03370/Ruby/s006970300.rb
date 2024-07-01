n, x = gets.chomp.split(" ").map(&:to_i)
m = []
n.times do
  m << gets.chomp.to_i
end
m_min = m.min
m_sum = m.inject(:+)
puts (x-m_sum)/m_min + n