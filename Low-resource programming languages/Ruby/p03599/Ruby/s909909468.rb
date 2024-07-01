a, b, c, d, e, f = gets.chomp.split.map(&:to_i)

a = 100 * a 
b = 100 * b

sugar = []
water = []

i = 0

while (a * i) < f
  k = 0
  while (b * k) < f
    combiWater = (a * i) + (b * k)
    if combiWater < f
      water << combiWater
    end
    k += 1
  end
  i += 1
end

i = 0

while (c * i) < f
  k = 0
  while (d * k) < f
    combiSugar = (c * i) + (d * k)
    if combiSugar < f
      sugar << combiSugar
    end
    k += 1
  end
  i += 1
end

water.sort!.uniq!
sugar.sort!.uniq!

maxDensity = 0
ansSugarWater = 0
ansSugar = 0

water.each do |i|
  sugar.each do |k|
    sugarWater = i + k
    if i == 0
      next
    end
    density = (k * 100) / i
    if sugarWater <= f && density <= e && maxDensity < density
      maxDensity = density
      ansSugarWater = sugarWater
      ansSugar = k
    end
  end
end

print("#{ansSugarWater}\s#{ansSugar}\n")