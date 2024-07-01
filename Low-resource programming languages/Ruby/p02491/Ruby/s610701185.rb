a, b = gets.split.map{|i| i.to_i}
printf("%d %d %.5f\n", a/b, a%b, a.quo(b))