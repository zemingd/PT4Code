a,b=gets.split(" ").map(&:to_i)
printf("%d %d %10.10f\n",a/b,a%b,a.to_f/b.to_f)