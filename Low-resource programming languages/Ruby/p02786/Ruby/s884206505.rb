H = gets.to_i
if H == 1 then
  puts 1
else
  i = 0
  while H > 2**i do
    i += 1
  end
  puts 2**(i+1)-1
end