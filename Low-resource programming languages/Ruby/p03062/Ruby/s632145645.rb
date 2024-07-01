n = gets.to_i
as = gets.split.map(&:to_i)
count_minus = 0
as.map { |a| a < 0 ? count_minus += 1 : nil }
if count_minus.even?
  puts as.inject(0) { |sum, num| sum += num.abs }
else
  as.map! { |a| a.abs }.sort!
  min = as.shift
  puts as.inject(:+) - min
end
