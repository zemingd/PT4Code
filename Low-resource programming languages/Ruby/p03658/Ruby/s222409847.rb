n, k = gets.split.map &:to_i
ls = gets.split.map(&:to_i).sort!
total = ls.inject(:+)

0.upto(n - k - 1) do |i|
  total -= ls[i]
end

puts total
