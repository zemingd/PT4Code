n,m,c = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

cnt = 0
a=[]
n.times.each do |i|
  sum = 0
  a[i] = gets.split(" ").map(&:to_i)

  m.times.each do |j|
    sum += a[i][j] * b[j]
  end
  cnt += 1 if sum+c > 0
end
puts cnt