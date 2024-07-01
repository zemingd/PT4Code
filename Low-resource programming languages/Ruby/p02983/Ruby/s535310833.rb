def fin(x)
  puts x
  exit
end

L, R = gets.strip.split.map(&:to_i)


res = 3000
(L..(R - 1)).each do |i| 
  ((i + 1)..R).each do |j|
    tmp = (i * j) % 2019
    res = tmp if tmp < res
  end
  fin(0) if res.zero?
end

puts res
