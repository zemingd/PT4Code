a,b,c = gets.split(" ").map{|i| i.to_i}
a+b+2*Math.sqrt(a*b) < c ? puts("Yes") : puts("No")
