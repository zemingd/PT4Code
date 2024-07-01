H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  puts 1
  exit
end

ans = 0

if H.even?
  if W.even?
    ans += H * (W / 2)
  else
    ans += (H / 2) * ((W / 2) + 1)
    ans += (H / 2) * (W / 2)
  end
else
  if W.even?
    ans += ((H / 2) + 1) * (W / 2)
    ans += (H / 2) * (W / 2)
  else
    ans += ((H / 2) + 1) * ((W / 2) + 1)
    ans += (H / 2) * (W / 2)
  end
end

puts ans
