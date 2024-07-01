n = gets.to_i
x = 100000
i = 0
while i < n
  x = x*1.05
  x = (x/1000).ceil * 1000
  i += 1
end

puts x