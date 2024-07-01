N,*S = $<.read.split
C = %w(AC WA TLE RE)
A = [0]*4
S.each { A[C.index _1] += 1 }
4.times {|i| puts "#{C[i]} x #{A[i]}" }