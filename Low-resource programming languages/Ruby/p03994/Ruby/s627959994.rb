s=gets.chomp
k=gets.to_i
a='a'.ord
z='z'.ord
ans = ""
g = Array.new(s.size, 0)
s.chars.each_with_index do |c, i|
  if k <= 0
    ans += c
    next
  end
  if i == s.size - 1
    new_c = c.ord + k
    if new_c > z
      new_c = a + ((new_c - z-1)%26)
    end
    ans += new_c.chr
    next
  end
  cost = z - c.ord + 1
  t = 0
  if k < cost
    t = 0
    #k -= t
  else
    t = cost
    k -= cost
  end
  new_c = c.ord + t
  if new_c > z
    new_c = a + ((new_c - z-1)%26)
  end
  ans += new_c.chr
end
puts ans
