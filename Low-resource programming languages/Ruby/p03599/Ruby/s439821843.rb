A, B, C, D, E, F = gets.split.map(&:to_i)

waters = []
amax = F / (A * 100)
bmax = F / (B * 100)
(0..amax).each do |a|
    (0..bmax).each do |b|
        water = (a * A + b * B) * 100
        if water < F
            waters.push(water)
        end
    end
end

waters.uniq!
waters.sort!
waters.delete(0)

sugars = []
cmax = F / C
dmax = F / D
(0..cmax).each do |c|
    (0..dmax).each do |d|
        sugar = c * C + d * D
        if sugar < F
            sugars.push(sugar)
        end
    end
end

sugars.uniq!
sugars.sort!

#water, suger, density
max = [0, 0, 0]

waters.each do |water|
    sugars.each do |sugar|
        break if water + sugar > F
        break if water * E < sugar * 100
        density = sugar.to_f / (water + sugar)
        max = [water, sugar, density] if density > max[2]
    end
end

puts "#{max[0]+max[1]} #{max[1]}"