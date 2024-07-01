def get_next(c)
  x = c.ord
  x = x == 122 ? 97 : x + 1
  x.chr
end

s = gets.chomp
k = gets.to_i
s.split("").each_index do |i|
  if k >= 123 - s[i].ord
    (123 - s[i].ord).times do
      s[i] = get_next s[i]
      k -= 1
    end
  end
end
if k > 0
  k.times do
    s[-1] = get_next s[-1]
  end
end
puts s