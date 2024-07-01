N = gets.to_i




(1..N).each do |i|
  count = 0
  x = 1
  y = 1
  z = 1
  (x..12).each do |k|
    v = k**2
    (y..12).each do |m|
      q = m**2
      g = k * m
      (z..12).each do |n|
        if  v+  q+ n**2 + g + m * n + k * n == i
          count += 1
        end 
      end
    end
  end
  puts count 
end

