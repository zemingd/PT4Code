n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

sum = 0
minus = 0
min_abs = 10 ** 9
n.times do |i|
  sum += a[i].abs
  minus += 1 if a[i] < 0
  min_abs = a[i].abs if min_abs > a[i].abs
end

sum -= 2 * min_abs if minus%2 == 1

puts(sum)