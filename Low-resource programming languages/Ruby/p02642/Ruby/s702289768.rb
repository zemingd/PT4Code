n = gets.to_i
a = gets.split.map(&:to_i).sort
r = Array.new(n, 0)
for i in 0...n
  for j in i+1...n
    if a[i] == a[j]
      r[i] = 1
      r[j] = 1
      next
    end
    next if r[j] == 1
    if a[j] % a[i] == 0
      r[j] = 1
    end
  end
end
p r.size - r.sum