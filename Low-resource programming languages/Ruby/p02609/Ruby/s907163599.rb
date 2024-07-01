n = gets.to_i
xs = gets.chop
xi = xs.to_i(2)
init_count = xs.count('1')
p_init_count = init_count + 1
m_init_count = init_count - 1
pxi = xi % p_init_count
mxi = xi % m_init_count
ans = []
n.times do |i|
  if xi[i].zero?
    t = (pxi + 2.pow(i,p_init_count)) % p_init_count
  else
    next ans.push(0) if init_count == 1
    t = (mxi - 2.pow(i,m_init_count)) % m_init_count
  end
  c = 1
  until t == 0
    t %= t.to_s(2).count('1')
    c += 1
  end
  ans.push(c)
end
ans.reverse_each { puts _1 }