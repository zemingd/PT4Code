N = gets.to_i




(1..N).each do |i|
  count = 0
  x = 1
  y = 1
  z = 1
  (x..12).each do |k|
    (y..12).each do |m|
      (z..12).each do |n|
        if k**2 + m**2 + n**2 + k * m + m * n + k * n == i
          count += 1
        end 
      end
    end
  end
  puts count 
end

