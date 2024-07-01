n, m = gets.chomp.split.map(&:to_i)
demands = m.times.map do
  gets.chomp.split.map(&:to_i)
end

cnt = 0
min, max = demands[0]
(demands.size - 1).times do |i|
  if max <= demands[i + 1][0]
    cnt += 1
    max = Float::INFINITY
  end

  min = demands[i + 1][0]
  max = [max, demands[i + 1][1]].min
end

puts(cnt + 1)