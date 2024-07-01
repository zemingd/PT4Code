n,m,k = gets.split.map &:to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
ai = 0
bi = 0
sum = 0
t = 0
while (ai < n && bi < m)
  if a[ai] >= b[bi]
    t += b[bi]
    bi += 1
  else
    t += a[ai]
    ai += 1
  end
  if t < k
    sum += 1
  end
end

if t < k
  if ai != n && bi == m
    (ai...n).each do |i|
      t += a[i]
      if t > k
        break
      else
        sum += 1
      end
    end
  elsif ai == n && bi != m
    (bi...m).each do |i|
      t += b[i]
      if t > k
        break
      else
        sum += 1
      end
    end
  end
end

puts sum
