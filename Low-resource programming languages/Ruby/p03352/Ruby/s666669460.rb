x = gets.to_i
i = 1
j = 1
while true
  j = i * i
  break if j >= x
  i += 1
end
puts ((Math.sqrt(j)-1)**2).to_i
