n = gets.to_i
sort = []
for i in 2..n/2
for j in 2..n
    if i**j <= n
      sort.push(i**j)
    end
end
end
sort.push(1)
p sort.max