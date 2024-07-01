a,b,c,x = 4.times.map{get.to_i}
ans = 0
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      ans +=1 if  500*a + 100*b + 50*c ==x
    end
  end
end
puts ans
  