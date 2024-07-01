n = gets.to_i
array = Array.new(4){Array.new(3){Array.new(10,0)}}

n.times {
  b, f, r, v = gets.split(" ").map(&:to_i)
  array[b-1][f-1][r-1] += v
}

for i in 0..3
  for j in 0..2
    for l in 0..9
      print " #{array[i][j][l]}"
    end
    print "\n"
  end
  if i < 3
    puts "#"*20
  end
end