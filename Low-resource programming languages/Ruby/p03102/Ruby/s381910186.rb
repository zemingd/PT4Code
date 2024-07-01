n,m,c = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
a = Array.new(n){Array.new(m)}
n.times do |i|
  a[i] = gets.chomp.split(" ").map(&:to_i)
end
cnt = 0
n.times do |i|
  sum = c
  m.times do |j|
    sum += a[i][j]*b[j]
  end
  if sum > 0
    cnt += 1
  end
end
puts cnt
