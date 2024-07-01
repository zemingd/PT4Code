n, x = gets.split.map{|i| i.to_i }
m = []
while line = gets
  m << line.chomp.to_i
end
m_sum = m.sum
m_min = m.min

if (x - m_sum) >= m_min
  puts (x - m_sum) / m_min + n
else
  puts n
end