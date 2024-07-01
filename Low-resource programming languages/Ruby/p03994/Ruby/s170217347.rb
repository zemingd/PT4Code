s = gets.chomp
k = gets.to_i

z = "z".ord
count = 0

while true
  skip = k / 26
  if skip.zero?
    break
  end
  skip.times do
    break if count == s.size.pred
    t = (z - s[count].ord).succ
    k -= t
    s[count] = "a"
    count += 1
  end
end
for i in (count...s.size)
  break if k.zero?
  if s[i] != "a"
    t = (z - s[i].ord).succ
    if t <= k
      k -= t 
      s[i] = "a"
    end
  end
end
k = k % 26
s[-1] = (s[-1].ord + k).chr

puts s

