A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i
flag = 0
T.times { |t|
  if t*V+A == t*W+B
    flag = 1
    break
  end
}
puts  flag == 1 ? "YES" : "NO"
