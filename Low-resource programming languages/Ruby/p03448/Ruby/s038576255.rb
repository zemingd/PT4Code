a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
total = gets.chomp.to_i

count = 0

(0..a).each do |i|
    if 500 * i <= total
      (0..b).each do |j|
        if 500 * i + 100 * j <= total
          (0..c).each do |k|
            if 500 * i + 100 * j + 50 * k == total
             count += 1
            end
          end
        end
      end
    end
  end

  puts count