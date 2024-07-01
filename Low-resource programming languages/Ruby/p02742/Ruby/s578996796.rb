H, W = gets.chomp.split(" ").map(&:to_i)

if H == 1 || W == 1 then
  puts 1
else
  if H.odd? && W.odd? then
    puts (H * W) / 2 + 1
  else
    puts (H * W) / 2
  end
end