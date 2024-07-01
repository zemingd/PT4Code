A, B, C, D, E, F = gets.chomp.split.map(&:to_i)

maxDensity = 0
ans = []

0.upto(F/100) do |a|
  0.upto(F/100) do |b|
    w = a * A + b * B
    water = w * 100
    next if water > F
    limit = w * E

    0.upto(F/C) do |c|
      0.upto(F/D) do |d|
        sugar = c * C + d * D
        sugarWater = water + sugar
        next if sugarWater > F || sugarWater == 0
        density = (sugar * 100) / sugarWater.to_f

        if sugar <= limit && maxDensity <= density 
          maxDensity = density
          ans = [sugarWater, sugar]
        end
      end
    end
  end
end

puts ans.join(' ')