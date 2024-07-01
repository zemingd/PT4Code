ab = gets.delete(" ").to_i
r = Math.sqrt(ab).to_i
r*r == ab ? puts("Yes") : puts("No")
