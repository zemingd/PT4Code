N,M,C = gets.chomp.split.map(&:to_i)
b  = gets.chomp.split.map(&:to_i)
a =  N.times.map{gets.chomp.split.map(&:to_i)}
ans = 0

N.times do |i|
  temp = c
  M.times do |j|
    temp += a[i][j] * b[j]
  end
  ans += 1 if temp > 0
end