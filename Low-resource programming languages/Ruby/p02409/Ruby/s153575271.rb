a = Array.new(4)
a.each { |o|
  o = Array.new(3)
  o.each { |p|
    p = Array.new(10)
    p.each { |q| q = 0 }
  }
}

gets.to_i.times {
  b,f,n,p = gets.chomp.split(" ").map &:to_i

  a[b-1][f-1][n-1] += p
  a[b-1][f-1][n-1] = 0 if a[b-1][f-1][n-1] < 0
  a[b-1][f-1][n-1] = 9 if a[b-1][f-1][n-1] > 9
}

4.times { |i|
  3.times { |j|
   10.times { |k|
     print " #{a[i][j][k]}"
   }
   puts
  }
  20.times { print "#" } unless i < n-1
  puts
}