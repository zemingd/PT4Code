a, b, c = gets.chomp.split(" ").map(&:to_f)
 
c / (a+b) + (a-b) / c > -2 ? puts("Yes") : puts("No")
