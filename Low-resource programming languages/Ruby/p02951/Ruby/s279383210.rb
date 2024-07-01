A, B, C = gets.chomp.split(" ").map(&:to_i)

ans = C - (A - B)

if ans < 0
  p 0
else
  p ans
end
