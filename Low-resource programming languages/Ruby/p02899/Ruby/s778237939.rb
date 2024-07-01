n = gets.to_i
a = gets.split(' ').map &:to_i
ar = a.map.with_index(1){|x,i| [i,x]}
ar.sort_by!{|k,v| v}
(0...n).each do |i|
  print "#{ar[i].first}"
  print ' ' if i != n-1
end