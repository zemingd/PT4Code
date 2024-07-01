L, R = gets.chomp.split(' ').map(&:to_i)

min = 1
count = 0
(L..R).each do |n|
  t = (n * (n + 1)) % 2019
  min = t if t < min || count.zero?
  count += 1
  break if min.zero?
  break if R - 1 == n
end
print min
