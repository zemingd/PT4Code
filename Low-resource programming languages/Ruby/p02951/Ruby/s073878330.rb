#&と%を間違えた
n = gets.to_i
i = 1
sum = 0
while i <= n do
  if i.to_s.size%2==1
    sum += 1
  end
  i += 1
end
puts sum

