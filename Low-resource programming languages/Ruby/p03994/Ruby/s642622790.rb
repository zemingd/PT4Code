s = gets.chomp
k = gets.chomp.to_i

l = s.length

i = 0
while k > 0 && i < l
  d = 'z'.ord - s[i].ord + 1
  if k >= d
    s[i] = 'a'
    k -= d
  end
  i += 1
end

s[-1] = ((s[-1].ord - 'a'.ord + k) % 26 + 'a'.ord).chr

puts s
