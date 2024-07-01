a = []
12.times do
  a << Array.new(10, 0)
end

n = gets.chomp.to_i

n.times do
  b, f, r, v = gets.chomp.split.map(&:to_i)

  a[(b-1) * 3 + f - 1][r - 1] += v
end

12.times do |i|
  puts " #{a[i].join(' ')}"

  break if i == 11
  puts "####################" if i % 3 == 2
end

