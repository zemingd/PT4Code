a, b = gets.split.map(&:to_i)
if a % 2 != b % 2
  print("IMPOSSIBLE\n")
else
  k = (a+b) / 2
  p k
end
