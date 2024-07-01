n,k = nil,nil
gets,chomp.split(" ").each_with_index{|num,i| eval("#{['n','k'][i]} = num")
puts(k*(k**(n-1)))