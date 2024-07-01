def jud_sq(n)
  root = n ** 0.5
  i = 1
  while (i+1) <= root
    i += 1
  end
  if i == root
    return 1
  else
    return 0
  end
end

n, d = gets.split.map(&:to_i)
x = Array.new(n).map{Array.new(d)}
for i in 0..(n-1)
  x[i] = gets.split.map(&:to_i)
end
cnt = 0
for i in 0..(n-1)
  for j in (i+1)..(n-1)
    sum = 0
    for k in 0..(d-1)
      sum += (x[i][k] - x[j][k]) ** 2
    end
    cnt += 1 if jud_sq(sum) == 1
  end
end
puts cnt