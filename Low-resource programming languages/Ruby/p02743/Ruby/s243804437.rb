a, b, c = gets.chomp.split(" ").map(&:to_f)

(a + b) / b < (c + 4 * a) / b ? puts("Yes") : puts("No")