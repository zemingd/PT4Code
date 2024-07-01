def get_next(c, n)
  x = c.ord
  x = (x + n > 122) ? x + n - 122 + 97 : x + n
  x.chr
end

s = gets.chomp
k = gets.to_i
(0..(s.size-1)).each do |i|
  break if k == 0
  if k >= 123 - s[i].ord
    s[i] = get_next s[i], (123 - s[i].ord)
      k -= (123 - s[i].ord)
    end
  end
end
if k > 0
  s[-1] = get_next s[-1], k
end
puts s