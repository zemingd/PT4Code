a,b,c,x = 4.times.map { gets.to_i }
cnt = 0

(0..a).each do |i|
    (0..b).each do |j|
        (0..c).each do |k|
            if i * 500 + j * 100 + k * 50 == x
                cnt += 1
            end
        end
    end
end
p cnt