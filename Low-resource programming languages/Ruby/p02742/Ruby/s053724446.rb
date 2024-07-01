# H W
H, W = gets.split.map(&:to_i)

if H.even?
  puts (H * W / 2)
else
  puts (H * W / 2) + 1
end