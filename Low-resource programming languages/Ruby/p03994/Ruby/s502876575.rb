def get_next(c)
  x = c.ord
  x = x == 122 ? 97 : x + 1
  x.chr
end

s = gets
k = gets.to_i
s = s.each_index do |i|
  if k >= 122 - s[i].ord
    (122 - s[i].ord).times do
      s[i] = get_next s[i]
    end
  end
end
if k > 0
  k.times do
    s[-1] = next s[-1]
  end
end
puts s