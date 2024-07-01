n = gets.to_i
as = gets.split.map(&:to_i)
nec = as.count { |a| a < 0 }
if nec.even?
  puts as.map { |a| a.abs }.inject(:+)
else
  aaa = as.map { |a| a.abs }
  puts aaa.inject(:+) - aaa.min * 2
end
