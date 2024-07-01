n = gets.to_i
p = gets.split.map {|x| x.to_i}

i = 1
sum = 0
while i < n - 1
  if (p[i-1] < p[i] and p[i] < p[i+1]) or
    (p[i+1] < p[i] and p[i] < p[i-1])
    sum += 1
  end
  i+=1
end
puts sum


