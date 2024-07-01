k = gets.to_i
for i in 1..k
for j in 1..k
  if i.odd? && j.even?
    cnt += 1
  end
end
end
puts cnt