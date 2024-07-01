H, W = gets.split.map(&:to_i)
ans = if H.even?
  H / 2 * W
else
  ((H + 1) / 2 * ((W + 1) / 2)) + ((H / 2) * (W / 2))
end
puts ans