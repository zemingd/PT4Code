C = 10 ** 9

n, m, k = gets.split.map(&:to_i)
desk_a = gets.split.map(&:to_i)
desk_b = gets.split.map(&:to_i)

acc = 0
dp_a = desk_a.map {|a| acc += a}
acc = 0
dp_b = desk_b.map {|b| acc += b}
dp_a.unshift(0)
dp_b.unshift(-1)

a = b = i = 0
loop do
  tmp_a0 = dp_a[a + i] || C
  tmp_b0 = dp_b[b] || C + 1
  tmp_a1 = dp_a[a + i + 1] || C
  tmp_b1 = dp_b[b + 1] || C + 1
  break if tmp_a1 + tmp_b0 > k && tmp_a0 + tmp_b1 > k 
  
  if dp_a[a + i] < dp_b[b + i]
    a += i + 1
    i = 0
  elsif dp_a[a + i] > dp_b[b + i]
    b += i + 1
    i = 0
  else
    i += 1
  end
end

puts a + b + i