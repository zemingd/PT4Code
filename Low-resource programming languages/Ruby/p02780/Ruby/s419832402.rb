n, k = gets.chomp.split(' ').map(&:to_i)
ps = gets.chomp.split(' ').map(&:to_i)

exps = {}
ps.each do |x|
  next unless exps[x].nil?
  exps[x] = x.times.map { |y| y + 1 }.reduce(:+) / x.to_f
  exps[x] = exps[x].round(12)
end

exps = ps.map { |x| exps[x] }

max = 0
(exps.count - (k - 1)).times do |i|
  sub_exps = exps[(i...i+k)]
  sum = sub_exps.reduce(:+)
  max = sum if sum > max
end

puts max
