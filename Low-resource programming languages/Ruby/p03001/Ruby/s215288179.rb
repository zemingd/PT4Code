W,H,x,y = gets.chomp.split(" ").map(&:to_f)

ans = (x == W/2 and y == H/2) ? 1 : 0
printf("%f %d", W*H/2, ans)