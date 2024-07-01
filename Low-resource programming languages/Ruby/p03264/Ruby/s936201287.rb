n = gets.to_i
odd = 0
even = 0
for i in 1..n
  if i.odd?
    odd += 1
  else
    even += 1
  end
end
puts odd * even