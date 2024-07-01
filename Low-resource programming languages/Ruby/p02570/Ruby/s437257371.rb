s = gets.strip.to_s
t = gets.strip.to_s
sum = s.size
tum = t.size

i = 0
ary = []
while i <= sum-tum do
  k = 0
  po = 0
  while k < tum do
    if t[k]==s[i+k]
      po += 1
    end
    k += 1
  end
  ary << tum-po
  i += 1
end
puts ary.min