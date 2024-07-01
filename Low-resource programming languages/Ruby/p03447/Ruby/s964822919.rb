a, b, c, x = 4.times.map { gets.to_i }
cnt=0
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |h|
      cnt += 1 if i*500+j*100+h*50 == x
    end
  end
end
puts cnt