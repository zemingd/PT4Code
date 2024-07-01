a, b, c, d = 4.times.map { gets.to_i }

count = 0

(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      if i*500 + j*100 + k*50 == d
        count += 0
      end
    end
  end
end

puts count