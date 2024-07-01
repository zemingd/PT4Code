n, k = gets.split.map &:to_i
h = gets.split.map(&:to_i).sort
m = [n, k].min
ans = 0

for i in 0 .. m - 1
  ans += h[i]
end

puts ans