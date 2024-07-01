H, W = gets.split().map(&:to_i)
if W == 1 || H == 1
  puts 1
else
  puts (H*W+1)/2
end