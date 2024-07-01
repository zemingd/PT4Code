def chmin(a, b) a < b ? a : b end

L, R = gets.strip.split.map(&:to_i)

res = 3000
(L..(R - 1)).each do |i| 
  ((i + 1)..R).each do |j|
    res = chmin((i * j) % 2019, res)
  end
  if res.zero?
    puts 0
    exit
  end
end

puts res
