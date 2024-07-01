N = gets.to_i

x = 1
y = 1
z = 1

count = 0

(1..N).each do |i|
  count = 0
  (x..9).each do |k|
    (y..9).each do |m|
      (z..9).each do |n|
        if k**2 + m**2 + n**2 + k * m + m * n + k * n == i
          count += 1
        end 
      end
    end
  end
  puts count 
end

