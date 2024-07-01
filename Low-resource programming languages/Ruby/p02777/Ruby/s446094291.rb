n, k = gets.chomp.split(' ').map(&:to_i)
ps = gets.chomp.split(' ').map(&:to_i)

exps = {}
ps.each do |x|
  next unless exps[x].nil?
  exps[x] = (1..x).reduce(:+) / x.to_f
end

exps = ps.map { |x| exps[x] }

max = 0
(0..exps.count-k).each do |i|
  sum = exps[(i..i+k-1)].reduce(:+)
  max = sum if sum > max
end

puts max
