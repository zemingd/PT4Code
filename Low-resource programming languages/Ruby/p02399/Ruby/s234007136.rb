a,b = gets.chomp.split(" ").map{|x| x.to_i}

printf("%d %d %f",a/b,a%b,a.to_f/b.to_f)
