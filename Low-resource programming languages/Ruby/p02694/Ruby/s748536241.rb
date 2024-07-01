x = gets.chomp.to_i

count = 0

for i in 1..10**18 do
  y = (100 * 1.01 ** i).floor
  if(y <= x)
    count += 1
  else
    break
  end
end

puts count
