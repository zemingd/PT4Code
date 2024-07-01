w, h, x, y, r = gets.split.map(&:to_i)
(x + r) > w || (x - r) < 0 || (y + r) > h || (y - r) < 0 ? puts("No") : puts("Yes")