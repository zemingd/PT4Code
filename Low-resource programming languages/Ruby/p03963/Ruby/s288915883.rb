n,k = nil,nil
gets.chomp.split(" ").each_with_index{|num,i| eval("#{['n','k'][i]} = num.to_i")}
puts(k*((k-1)**n))