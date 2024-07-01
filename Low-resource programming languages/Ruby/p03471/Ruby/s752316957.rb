n,y=gets.chomp.split(" ").map { |e| e.to_i  }

for i in 0..n do
  for j in 0..n-i do
    for k in 0..n-i-j do
      if 10000*k + 5000*j + 1000*i == y
          printf("%d %d %d\n",k,j,i)
          exit
      end
    end
  end
end

printf("%d %d %d\n",-1,-1,-1)