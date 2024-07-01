a,b,x = gets.split.map(&:to_i)
printf("%s\n", (x == a || x == a+b) ? "YES" : "NO")