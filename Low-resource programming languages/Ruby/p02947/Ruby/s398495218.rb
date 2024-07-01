s = Hash.new(-1)
gets.to_i.times {s[gets.chomp.split('').sort.join('')]+=1}
p s.values.inject(0){|s,x| s+x*(x+1)/2}