H, W = gets.split(' ').map(&:to_i)

ans = (H * W).div(2)
if H == 1 || W == 1
  puts 1
elsif H*W % 2 == 0 then
  puts ans.to_i
else
  puts ans.to_i + 1 
end