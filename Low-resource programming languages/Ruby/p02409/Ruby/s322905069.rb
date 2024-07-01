ary = Array.new(4).map{Array.new(3).map{Array.new(10,0)}}
n = gets.to_i
for i in 1..n
  b,f,r,v = gets.split.map {|n| n.to_i}
  ary[b-1][f-1][r-1] += v
end
for b in 1..4
  for f in 1..3
    for r in 1..10
      print " " + ary[b-1][f-1][r-1].to_s
    end
    print "\n"
  end
  puts "####################" unless b == 4
end