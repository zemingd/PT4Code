H, A = gets.split.map(&:to_i)
n = H / A
m = H % A
if m == 0
  puts n
else
  puts(n + 1)
end