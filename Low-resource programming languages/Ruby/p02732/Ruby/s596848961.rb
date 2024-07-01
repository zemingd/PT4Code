n = gets.chomp.to_i
ary1 = gets.chomp.split.map(&:to_i)
ary2 = Array.new(n,0)
ary1.each{|elem|
  ary2[elem-1] +=1
  }
sum = ary2.map{|elem| (elem*(elem-1))/2}.inject(&:+)
ary1.each{|elem|
  puts sum-ary2[elem-1]+1
  }

