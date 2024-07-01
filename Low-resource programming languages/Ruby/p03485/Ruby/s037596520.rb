a,b = STDIN.gets.chomp.split.map{|s| s.to_f}
m = (a+b) / 2

m_int = m.to_i
m_small = m - m_int
tmp = (m_small * 10).to_i 
if tmp >= 5
  puts m_int+1
else
  puts m_int
end

