s = gets.chomp
k = gets.to_i
a = "a"
z = "z".ord
for i in (0...s.size)
  break if k == 0
  if s[i] != a
    t = z - s[i].ord + 1
    if t <= k
      k -= t 
      s[i] = a
    end
  end
end
k = k % 26
s[-1] = (s[-1].ord + k).chr

puts s

