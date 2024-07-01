n, d = STDIN.gets.chomp.split(' ').map(&:to_i)

x = Array.new(0)
for i in 1..n
  x.push(STDIN.gets.chomp.split(' ').map(&:to_i))
end

count = 0
for j in 0..(n-1)
  for k in 0..(n-1-(j+1))
    sum =  0
    for l in 0..(d-1)
      sum += (x[j][l] - x[k+(j+1)][l]) ** 2
    end
    rt = Math.sqrt(sum)
    if rt.floor == rt.ceil then
      count += 1
    end
  end
end

puts count