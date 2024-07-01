$A, $B, $C, $D, $E, $F = gets.split.map(&:to_i)

waters = []
amax = $F / ($A * 100)
bmax = $F / ($B * 100)
(0..amax).each do |a|
    (0..bmax).each do |b|
        water = (a * $A + b * $B) * 100
        if water < $F
            waters.push(water)
        end
    end
end

waters.uniq!
waters.delete(0)

def max_sugar(water)
    max = [0, 0, 0]

    cmax = $E * water / 100 / $C
    dmax = $E * water / 100 / $D
    (0..cmax).each do |c|
        (0..dmax).each do |d|
            sugar = (c * $C + d * $D)
            density = sugar.to_f / (water + sugar)
            if sugar * 100 <= $E * water && water + sugar <= $F
                max = [water, sugar, density] if max[2] < density
            end
        end
    end
    return max
end

#water, suger, density
max = [0, 0, 0]

waters.each do |water|
    tuple = max_sugar(water)
    max = tuple if tuple[2] > max[2]
end

puts "#{max[0]+max[1]} #{max[1]}"