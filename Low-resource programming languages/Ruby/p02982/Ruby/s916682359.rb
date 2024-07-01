n,d = gets.split.map(&:to_i)
point = Array.new(n).map{Array.new(d,0)}
n.times{|i| point[i] = gets.split.map(&:to_i)}
ans = 0
for i in 0..n-1
  for j in 0..n-1
    inst = 0
    if i != j
      for k in 0..d-1
        inst += (point[i][k]-point[j][k])**2
      end
      inst = inst**0.5
      if inst % 1.0 == 0
        ans += 1
      end
    end
  end
end
puts ans / 2
