n=gets.to_i
ab=(1..n).map{gets.split.map(&:to_i)}.group_by{|x|x.last}
t=0
ab.keys.sort.each{|i| 
  d=ab[i].inject(0){|s,j|s+j[0]}
  puts "No" or exit if d>i-t
  t+=d
  }
puts "Yes"