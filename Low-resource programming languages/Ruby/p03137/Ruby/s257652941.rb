(n, m) = gets.chomp.split(' ').map(&:to_i)
x = gets.chomp.split(' ').map(&:to_i).sort

d = [-1] * (m - 1)
(m - 1).times do |i|
  d[i] = x[i + 1] - x[i]
end

puts d.sort[0..(n - m + 1)].reduce(:+).to_s