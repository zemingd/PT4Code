a,b,c = gets.split.map(&:to_i)

a < b && b < c ? puts("Yes") : puts("No")
