N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

a = A
b = [a.pop]

M.times do
  b.unshift((!a.empty? && a.last >= b.last ? a.pop : b.pop) / 2)
end

puts (a + b).inject(:+)
