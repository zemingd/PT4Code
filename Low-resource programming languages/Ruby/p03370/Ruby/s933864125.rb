n, x = gets.split(" ").map(&:to_i)
m_s = (1..n).inject([]) {|acc, _| acc << gets.to_i }
ret = n
x -= m_s.inject(:+)
min = m_s.min
while x >= min
  x -= min
  ret += 1
end
puts ret
