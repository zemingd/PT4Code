a, b, c = gets.chomp.split(" ").map(&:to_f)
 
c / (a-b) - 2*(a+b) / (a-b) + (a-b) / c > 0 ? puts("Yes") : puts("No")
