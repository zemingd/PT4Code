N,D = gets.split.map &:to_i
X = Array.new(N){gets.split.map &:to_i}

count = 0
for i in 0..(N-2)
  for j in (i+1)..(N-1)
    sum = 0
    for k in 0..(D-1)
      sum += (X[i][k] - X[j][k])**2
    end
    if Math.sqrt(sum).to_i**2 == sum
      count += 1
    end
  end
end

puts count