n = gets.chomp.to_i
i = 1
pass = []
while i <= n
  j = 1
  while j <= n
    k = 1
    while k <= n
      pass << [i,j,k].join
      k+=1
    end
    j+=1
  end
  i+=1
end
p pass.size