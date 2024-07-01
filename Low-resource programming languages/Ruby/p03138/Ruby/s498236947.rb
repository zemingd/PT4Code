n, k = gets.split.map(&:to_i)
ary  = gets.split.map(&:to_i)
max  = 0

n.times do |i|
  max = ary[i] > max ? ary[i] : max
  ary[i] = ary[i].to_s(2)
end

dit = Array.new(max.to_s(2).size, 0)

n.times do |i|
  ary[i].size.times do |j|
    if ary[i][j] == '1'
      dit[ary[i].size - j - 1] += 1
    end
  end
end

m2 = []
dit.each do |i|
  if i > n / 2
    m2.unshift(0)
  else
    m2.unshift(1)
  end
end
m10 = m2.join.to_i(2)

if m10 > k
  sa    = m10 - k
  minus = 1
  while sa > minus
    minus *= 2
  end
  m10 =  m10 - minus
end

ans = 0

m2 = m10.to_s(2)
x  = m2.size
n.times do |i|
  y = []
  if ary[i].size < x
    ary[i] = "0" * (x - ary[i].size) + ary[i]
  end
  x.times do |j|
    if m2[j] == ary[i][j]
      y << 0
    else
      y << 1
    end
  end
  ans += y.join.to_i(2)
end

puts ans
