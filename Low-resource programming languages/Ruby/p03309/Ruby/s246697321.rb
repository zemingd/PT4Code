n=gets.to_i
aa=gets.chomp.split.map(&:to_i)
aa=aa.map.with_index { |a, i| a-i-1 }
aa.sort!
b=n.even? ? aa[n/2-1,2].inject(:+)/2.0 : aa[n/2]
aa = aa.map { |a| (a-b).abs }
puts aa.inject(:+)
