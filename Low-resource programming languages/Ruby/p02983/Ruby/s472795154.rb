line = gets.split(' ').map(&:to_i)
l = line[0]
r = line[1]
min = 2019
for i in l..r do
  for j in l..r do
    if i==j 
      break
    end
    if (i*j)%2019 == 0
      puts("0")
      exit
    end
    if min >=(i*j)%2019
      min = (i*j)%2019
    end
  end
end
puts min
      