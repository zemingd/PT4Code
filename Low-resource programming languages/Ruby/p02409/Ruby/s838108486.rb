a = Array.new(4)
4.times { |i|
  a[i] = Array.new(3)
  3.times { |j| 
    a[i][j]= Array.new(10, 0)
  }
}

gets.to_i.times {
  b,f,r,p = gets.chomp.split(" ").map &:to_i
 
  a[b-1][f-1][r-1] += p
  a[b-1][f-1][r-1] = 0 if a[b-1][f-1][r-1] < 0
  a[b-1][f-1][r-1] = 9 if a[b-1][f-1][r-1] > 9
}
 
4.times { |i|
  3.times { |j|
   10.times { |k|
     print " #{a[i][j][k]}"
   }
   puts
  }
  if i < 3
    20.times { print "#" }
    puts
  end
}