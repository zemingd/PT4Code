n = gets.to_i
ps=n.times.map{|i|
  s,p=gets.chomp.split
  [s,-p.to_i,i+1]
}
ps.sort!
ps.each{|_,__,i| p i}
