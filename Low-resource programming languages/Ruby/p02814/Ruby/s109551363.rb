NM,A = [0,1].map {gets.split.map &:to_i}
A.uniq!
p (1 + NM[1]/A.map!{|e| e/2}.inject(1, :lcm)) / 2