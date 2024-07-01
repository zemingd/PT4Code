x = gets.chomp.to_i
count = 0
y = 100
for i in 1..10**18 do
  y = y * 1.01
  count += 1
  if(y <= x)
    y = y.floor
  else
    y = y.ceil
    break
  end
end

puts count
