a = Array.new(4)
a.each { |o|
  o = Array.new(3)
  o.each { |p|
    p = Array.new(10)
    p.each { |q| q = 0 }
  }
}

4.times { |i|
  3.times { |j|
   10.times { |k|
     print " #{a[i][j][k]}"
   }
   puts
  }
  20.times { print "#" } if i < 3
  puts
}