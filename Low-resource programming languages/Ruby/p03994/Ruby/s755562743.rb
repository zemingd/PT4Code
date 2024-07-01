$diff = 122 - 96

def get_next(c, n)
  x = c.ord + n
  x -= $diff while x > 122
  x.chr
end

s = gets.chomp
k = gets.to_i
(0..(s.size-1)).each do |i|
  break if k == 0
  if k >= 123 - s[i].ord
    k -= (123 - s[i].ord)
    s[i] = get_next s[i], (123 - s[i].ord)
  end
end
if k > 0
  s[-1] = get_next s[-1], k
end
puts s