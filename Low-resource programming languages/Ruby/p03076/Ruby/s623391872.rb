
li = 5.times.map{ gets.to_i }

best = 1e18
li.permutation do |pe|
  best = [best, pe.reduce{|s,e| (s+9)/10*10+e}].min
end
p best