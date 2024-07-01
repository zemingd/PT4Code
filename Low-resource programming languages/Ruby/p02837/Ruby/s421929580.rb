n = gets.to_i
a = Array.new(n){Array.new(n, 2)}
n.times do |i|
  m = gets.to_i
  m.times do
    x, y = gets.split.map(&:to_i)
    a[i][x - 1] = y
  end
end
max = 0
[0, 1].repeated_permutation(n) do |x|
  f = true
  n.times do |i|
    next if x[i] == 0
    n.times do |j|
      next if a[i][j] == 2
      if a[i][j] != x[j]
        f = false
        break
      end
    end
    break unless f
  end
  max = x.sum if f && max < x.sum
end
puts max