n = gets.to_i
v = n.times.map { |i| q = gets.split; [i] << q[0] << q[1].to_i }
v.sort_by { |s| -s[2] }.sort_by { |s| s[1] }.each { |s| puts s[0] + 1 }