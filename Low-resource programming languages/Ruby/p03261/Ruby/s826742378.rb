n = gets.to_i
ss = n.times.map{gets.chomp}
puts ss.uniq.size == n && (n-2).times.all?{|i| ss[i][-1] == ss[i+1][0]} ? 'Yes' : 'No'
