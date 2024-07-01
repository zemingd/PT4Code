a,b,c,x=4.times.map{gets.to_i}
res=0
(0..a).each do|i|
  (0..b).each do |j|
    (0..c).each do |k|
      res+=1 if 500*i+100*j+50*k === x
    end
  end
end
puts res