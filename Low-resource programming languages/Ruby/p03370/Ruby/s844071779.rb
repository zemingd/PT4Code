N, x = gets.chomp.split.map(&:to_i)
m = N.times.map{gets.to_i}
total = m.inject(:+)
m_min = m.min
cnt = N

while x - total >= m_min do
    x -= m_min
    cnt += 1
end

p cnt