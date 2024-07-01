N = gets.to_i
c = (0..8).map{ 0 }
gets.split.map(&:to_i).each{ |r| c[[r,3200].min / 400] += 1 }
cc = c[0..7].count{ |a| a > 0 }
puts [ cc + (c[-1] > 0 ? 1 : 0) * (cc > 0 ? 0 : 1), cc + c[-1] ].join(" ")
