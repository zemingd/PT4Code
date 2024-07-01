p, z, m, take = gets.split.map(&:to_i)

res = 0

p_take = [p, take].min
take -= p_take
res += p_take

z_take = [z, take].min
take -= z_take

m_take = [m, take].min
take -= m_take
res -= m_take

puts res