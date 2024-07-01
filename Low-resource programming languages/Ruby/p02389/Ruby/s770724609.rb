n = gets.chomp
n = n.split
n[0]=n[0].to_i
n[1]=n[1].to_i
printf("%d %d\n",n[0]*n[1],2*(n[0]+n[1]))