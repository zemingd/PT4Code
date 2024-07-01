n, d = gets.split.map(&:to_f)
x = []
while line = gets
  x << line.split.map(&:to_f)
end
count = 0                                      
for i in 0..n-2
  for j in i+1..n-1
    distance = 0
    for k in 0..d-1
      distance += (x[i][k] - x[j][k]) ** 2     
    end
    count += 1 if (distance ** 0.5) % 1.0 == 0 
  end
end
puts count