w,h,n = gets.chomp.split(" ").map(&:to_i)
x = n.times.map{gets.chomp.split(" ").map(&:to_i)}
y = Array.new(h).map{Array.new(w,0)}
for i in 0..n-1
  if x[i][2] == 1
    y.each do |arr|
      for j in 0..x[i][0]-1
        arr[j] = 1
      end
    end
  elsif x[i][2] == 2
    y.each do |arr|
      for j in x[i][0]..w-1
        arr[j] = 1
      end
    end
  elsif x[i][2] == 3
    for j in 0..x[i][1]-1
      for k in 0..w-1
        y[j][k] = 1
      end
    end
  else x[i][2] == 4
    for j in x[i][1]..h-1
      for k in 0..w-1
        y[j][k] = 1
      end
    end
  end
end
ans = 0
y.each do |arr|
  ans += arr.count(0)
end
puts ans