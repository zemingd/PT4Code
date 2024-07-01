require 'pp'
require 'set'

a, b, c, d, e, f = gets.chomp!.split(" ").map(&:to_i)

# 作れる水のパターン
water_patterns = Set.new
30.times do |y|
    30.times do |x|
        z = 100 * b * y + 100 * a * x
        if z <= f && z > 0
            water_patterns << z
        end
    end
end

# とかえる砂糖のパターン
suger_patterns = Set.new
30.times do |y|
    30.times do |x|
        z = y * c + d * x
        if z <= e && z > 0
            suger_patterns << z
        end
    end
end

#pp water_patterns
t = water_patterns.max / 100 * e
#pp t
tokaseru = {}
tokaseru[0] = 1

0.step(t, d) do |i|
    0.step(t, c) do |j|
        x = i + j
        break if x > t

        tokaseru[x] = 1
    end
end

# pp tokaseru

y = water_patterns.flat_map {|x|
    tokaseru.map {|k, y|
        if x + k > f
            [0, 0, 0]
        elsif x / 100 * e < k
            [0, 0, 0]
        else
            [k.to_f / (x + k).to_f, x + k, k, x]
        end
    }
}.sort

puts "#{y[-1][1]} #{y[-1][2]}"

