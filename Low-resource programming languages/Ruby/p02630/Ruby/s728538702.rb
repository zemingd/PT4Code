def op(m, sum, b, c)
  return sum if !m.key?(b)
  b_ct, b_sum = m[b]
  c_ct, c_sum = (m[c] || [0, 0])
  m[c] = [b_ct + c_ct, c_sum + (b_ct * c)]
  m.delete(b)
  return sum - b_sum + (b_ct * c)
end

N = gets.to_i
AS = gets.split.map(&:to_i)

m = AS.group_by(&:itself).to_h{|k, a| [k, [a.length, a.length * k]]}
sum = m.values.map{_2}.sum

Q = gets.to_i
Q.times do
  b, c = gets.split.map(&:to_i)
  sum = op(m, sum, b, c)
  puts sum
end