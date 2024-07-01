a, b, c = gets.chomp.split(" ").map(&:to_f)

Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c) ? puts("Yes") : puts("No")