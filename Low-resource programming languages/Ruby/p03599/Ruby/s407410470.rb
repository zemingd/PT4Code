a, b, c, d, e, f = gets.split.map(&:to_i)
a *= 100
b *= 100

ans = [0.0, 0, 0]
(0..).each do |i|
    (0..).each do |j|
        water = a * i + b * j
        break if water > f
        max_suger = [water, e * water / 100, f - water].min

        (0..).each do |k|
            suger = c * k
            break if suger > max_suger
            suger += d while suger + d <= max_suger

            rate = suger.fdiv(water + suger)

            if rate > ans[0]
                ans[0] = rate
                ans[1] = water + suger
                ans[2] = suger
            end
        end
    end

    break if a + i > f
end

puts ans[1,2].join(" ")