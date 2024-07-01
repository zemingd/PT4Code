a = Array.new(4)
a.each { |o|
  o = Array.new(3)
  o.each { |p| p = Array.new(10, 0) }
}

gets.to_i.times {
  b,f,n,p = gets.chomp.split(" ").map &:to_i

  a[b][f][n] += p
  a[b][f][n] = 0 if a[b][f][n] < 0
  a[b][f][n] = 9 if a[b][f][n] > 9
}

4.times { |i|
  3.times { |j|
   10.times { |k|
     print " #{a[i][j][k]}"
   }
   puts
  }
  20.times { print "#" }
  puts
}