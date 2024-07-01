a, b, c, d = 4.times.map { gets.to_i }
cnt = 0
(0..a).each do |i|
    (0..b).each do |j|
        (0..c).each do |k|
            cnt += 1 if i * 500 + j * 100 + k * 50 == x
        end
    end
end

puts cnt