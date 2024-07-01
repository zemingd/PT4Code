a = []
b = []
c = []

n, m, l = gets.split.map(&:to_i)

n.times do
  arr = gets.split.map(&:to_i)
  a.push(arr)
end

m.times do
  arr = gets.split.map(&:to_i)
  b.push(arr)
end

n.times do |i|
  arr = []
  l.times do |j|
    sum = 0
    m.times do |k|
      sum += a[i][k] * b [k][j]      
    end
    arr.push(sum)
  end
  c.push(arr)
end

n.times do |i|
  puts c[i]*" "
end

