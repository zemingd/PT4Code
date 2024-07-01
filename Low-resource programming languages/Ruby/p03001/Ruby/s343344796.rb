w, h, x, y = gets.chomp.split.map(&:to_i)

ans = w * h / 2.0
check = (w == x*2 && h == y*2) ? 1 : 0

printf("%f %d\n",ans,check)