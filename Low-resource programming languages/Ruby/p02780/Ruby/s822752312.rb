n, k = gets.chomp.split(' ').map(&:to_i)
ps = gets.chomp.split(' ').map(&:to_i)

exps = ps.map { |x| x.times.map { |y| y + 1 }.reduce(:+) / x.to_f }

max = 0
exps.count.times do |i|
  sub_exps = exps[(i...i+k)]
  sum = sub_exps.reduce(:+)
  max = sum if sum > max
end

puts max
