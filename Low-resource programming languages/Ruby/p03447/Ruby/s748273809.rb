a, b, c, x = 4.times.map { gets.to_i }
cnt = 0
(0..a).each do |i|
  (0..b).each do |j|
   (0..c).each do |k|
     if x == 500 * i + 100 * j + 50 * k
       cnt = cnt.cucc
     end
   end
  end
end
