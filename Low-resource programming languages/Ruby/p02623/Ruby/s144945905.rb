n,m,k=gets.chomp.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)

res = 0
res_dup = 0
n_i = 0
m_i = 0
cnt = 0


loop do
  res_dup = res.dup
  nasi = 0
  if !a[n_i]
    nasi = b[m_i]
  elsif !b[m_i]
    nasi = a[n_i]
  else
    break if !a[n_i] && !b[m_i]
  end
  if nasi > 0
    res_dup += nasi
    n_i += 1
    m_i += 1
  elsif a[n_i] >= b[m_i]
    res_dup += b[m_i]
    m_i += 1
  else
    res_dup += a[n_i]
    n_i += 1
  end
  if res_dup >= k
    cnt += 1 if res_dup == k
    break
  else
    res = res_dup
    cnt += 1
  end
end

puts cnt