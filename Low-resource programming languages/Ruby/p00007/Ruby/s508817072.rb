n = gets.chomp.to_i
if n <= 100
x = 100000
i = 0
while i < n
  x += x*5/100
  y = x%1000
  if y >= 100
  x = x-y+1000
  end
  i += 1
end

puts x
end