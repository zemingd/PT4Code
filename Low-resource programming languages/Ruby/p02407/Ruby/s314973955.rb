num=STDIN.gets.to_i
i=0
lines=STDIN.gets.chomp.split.map{|v|v.to_i}.reverse.each {|ans|
      i=i+1
      print ans
      if(i==num)then print "\n" else print " " end
}