s = gets.chomp
k = gets.to_i

ans = s

def n(a)
  26 - (a.ord - 'a'.ord)
end

i = 0
loop do
  break if k == 0
  if i == s.size
    k.times do
      s[-1] = s[-1].next
    end
    break
  end

  nn = n(s[i])
  if nn <= k
    s[i] = 'a'
    k -= nn
  end
  i += 1
end

puts s
