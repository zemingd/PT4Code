N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

M.times do
  a.sort!.reverse!
  a[0] = a[0] / 2
end

p a.inject(:+)
