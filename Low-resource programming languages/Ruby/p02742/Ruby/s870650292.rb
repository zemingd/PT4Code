H, W = gets.split.map(&:to_i)
if H == 1
  puts 1
elsif W == 1
  puts 1
elsif H % 2 == 0 then
  puts H * W / 2
else
  if W % 2 == 0
    puts H * W / 2
  else
    puts (H / 2 + 1) * (W / 2 + 1) + (H / 2) * (W / 2) 
  end
end
