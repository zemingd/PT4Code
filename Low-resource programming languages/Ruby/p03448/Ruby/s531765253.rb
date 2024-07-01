a,b,c,x = 4.times.map{gets.to_i}

cnt = 0

(0..a).each do |i|
  (0..b).each do |m|
    (0..c).each do |n|
      cnt += 1 if i * 500 + m * 100 + n * 50 == x
  end
end
  
puts cnt