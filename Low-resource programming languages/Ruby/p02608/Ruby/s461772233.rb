N = gets.to_i




N.times do |i|
  count = 0
  x = 1
  y = 1
  z = 1
  (x..13).each do |k|
    v = k**2
    (y..13).each do |m|
      q = m**2
      g = k * m
      (z..13).each do |n|
        if  v+  q+ n**2 + g + m * n + k * n == i
          count += 1
        end 
      end
    end
  end
  puts count 
end

