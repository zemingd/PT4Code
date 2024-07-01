m, n = gets.split.map(&:to_i)
if m < 2
  gg = 0
elsif m == 2
  gg = 1
elsif m == 3
  gg = 3
else
  gg = m * (m - 1) / 2
end

if n < 2
  kk = 0
elsif n == 2
  kk = 1
elsif n == 3
  kk = 3
else
  kk = n * (n - 1) / 2
end
puts gg + kk
