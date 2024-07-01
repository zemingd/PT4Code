n, m = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)
arr = Array.new(n, 1)

m.times do
  a, b = gets.split.map(&:to_i).sort!

  arr[a - 1] = 0 if hs[a - 1] <= hs[b - 1]
  arr[b - 1] = 0 if hs[a - 1] == hs[b - 1]
end

puts arr.count(1)
