r = gets.to_i
g = gets.to_i

ans = (2 * g) - r

if 0 < g
  puts ans
elsif g == 0
  puts (- r)
end
