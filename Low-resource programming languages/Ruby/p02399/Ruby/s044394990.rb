a,b = gets.split
i = a.to_i / b.to_i
j = a.to_i % b.to_i
k = a.to_f / b.to_f
printf("%d %d %.8f\n",i,j,k)