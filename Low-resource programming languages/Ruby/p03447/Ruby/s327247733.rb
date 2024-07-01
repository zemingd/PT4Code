_500_num = gets.to_i
_100_num = gets.to_i
_50_num = gets.to_i
total = gets.to_i

count = 0

(0.._500_num).each do |i|
  (0.._100_num).each do |j|
    (0.._50_num).each do |k|
  	  if 500 * i + 100 * j + 50 * k == total
        count += 1
      end
    end
  end
end
  
p count


