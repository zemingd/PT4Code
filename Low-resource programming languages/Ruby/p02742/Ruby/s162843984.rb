H, W = gets.split.map(&:to_i)

ans = 0

ans += (W/2.0).ceil * (H/2.0).ceil
ans += (W/2) * (H/2)

puts ans
