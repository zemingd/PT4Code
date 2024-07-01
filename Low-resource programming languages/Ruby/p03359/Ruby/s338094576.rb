a,b = gets.chomp.split.map(&:to_i)
printf("%d\n",(a>b ? a-1 : a))
