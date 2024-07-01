n = gets.to_i
del = gets.split.map!{|i| i.to_i}
i = 0
total = 0
while i < n do
  k = i + 1
  while k < n do
    total += del[i] * del [k]
    k += 1
  end
  i += 1
end
puts total

