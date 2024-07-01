n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
n.times do 
  a = gets.split.map(&:to_i)
  ans += 1 if a.zip(b).reduce(0){|s, (x, y)| s + (x * y)} + c > 0
end
p ans