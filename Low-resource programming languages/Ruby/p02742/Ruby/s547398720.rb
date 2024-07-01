H,W = gets.split.map(&:to_i)

H_div, H_mod = H.divmod(2)
W_div, W_mod = W.divmod(2)

ans = 0

if H_mod == 0
  ans += H_div * W
else
  if W % 2 != 0
    ans += (H_div + 1) * (W / 2 + 1) + (H_div) * (W / 2)
  else
    ans += (H_div + 1) * (W / 2) + (H_div) * (W / 2)
  end
end

puts ans