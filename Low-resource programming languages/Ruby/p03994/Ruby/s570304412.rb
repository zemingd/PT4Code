s = gets.chomp
k = gets.to_i

def n(a)
  26 - (a.ord - 'a'.ord)
end

i = 0
loop do
  break if k.zero?
  if i == s.size
    l = s[-1]
    (k % 26).times do
      l.next!
      l = 'a' if l == 'aa'
    end
    s[-1] = l
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
