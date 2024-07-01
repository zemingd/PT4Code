n = gets.chomp.to_i
a = ['3','5','7']
ans = 0
3.step(9) {|i| ans += a.repeated_permutation(i).count {|aa| aa.uniq.size==3 && aa.join.to_i <= n}}
p ans