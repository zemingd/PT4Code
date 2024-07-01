a, b, c, x = 4.times.map { |i| gets.to_i }

count = 0
(a+1).times do |d|
  (b+1).times do |e|
    (c+1).times do |f|
      count += 1 if (d * 500 + e * 100 + f * 50) == x
    end
  end
end

puts count
