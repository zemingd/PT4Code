A,B,C,D,E,F = gets.split.map(&:to_i)

def cands(x, y, limit)
  a, b = [x, y].sort
  ret = Array.new(limit+1)
  0.step(limit, a){|i| ret[i] = 1}
  loop do
    done = true
    (0..(limit-b)).each{|i| 
      if ret[i] && !ret[i+b]
        ret[i+b] = 1
        done = false
      end
    }
    break if done
  end
  (0..limit).select{|i| ret[i]}
end

water_cands = cands(A*100, B*100, F)
#p water_cands: water_cands
sugar_cands = cands(C, D, F)
#p sugar_cands: sugar_cands

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

p max_water + max_sugar
p max_sugar
#p max_water: max_water, max_sugar: max_sugar, sum: max_water + max_sugar, max_den: max_den
