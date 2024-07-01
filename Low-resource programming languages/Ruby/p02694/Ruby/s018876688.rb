n = gets.to_i
i = 100
s = 0
until i >= n
  i = (i * 1.01).to_i
  s += 1
end
puts s