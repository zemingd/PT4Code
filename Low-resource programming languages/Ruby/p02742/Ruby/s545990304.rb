H, W = gets.split.map(&:to_i)
if W.even? || H.even?
  result = (H * W)  / 2
else
  result = H * ((W - 1)/ 2)
  result += (H + 1) / 2
end

puts result