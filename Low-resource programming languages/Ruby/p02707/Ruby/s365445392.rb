n = gets.to_i
a = gets.split(' ').map{|e|e.to_i}
sub = []
n.times{|i|
  sub[i] = 0
}
 
a.each{|e|
  sub[e - 1] += 1
}

sub.each{|e|
  puts e
}