ary =  gets.split.map{|v|v.to_i}.sort
puts (ary[2] - ary[1]) + (ary[1] - ary[0])