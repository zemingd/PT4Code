A,B,C,D,E,F = gets.split.map(&:to_i)

def cands(a, b, limit)
  ret = []
  for i in 0..(limit/a+1)
    s = a*i
    for j in 0..(limit/b+1)
      t = b*j
      ret << s + t if s + t <= limit
    end
  end
  ret.uniq!
  ret
end

water_cands = cands(A*100, B*100, F)
p water_cands: water_cands if $DEBUG
sugar_cands = cands(C, D, F)
p sugar_cands: sugar_cands if $DEBUG

max_water = max_sugar = max_den = 0
for water in water_cands
  next if water == 0
  for sugar in sugar_cands
    next if water + sugar > F
    next if (sugar.to_f / water) * 100 > E
    den = sugar.to_f / (water + sugar)
    if den > max_den
      max_den = den
      max_water = water
      max_sugar = sugar
    end
  end
end

puts "#{max_water + max_sugar} #{max_sugar}"
p max_water: max_water, max_sugar: max_sugar, sum: max_water + max_sugar, max_den: max_den if $DEBUG
