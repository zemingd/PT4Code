N = gets.to_i
R = (0...N).map{ s,v = gets.split; [s,v.to_i] }
puts (1..N).sort_by{ |i| [R[i-1][0], -R[i-1][1]]  }