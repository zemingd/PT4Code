W, H, x, y = gets.chomp.split(" ").map(&:to_i)

printf("%f %d\n", W * H.to_f / 2, (W == 2 * x) && (H == 2 * y) ? 1 : 0)
