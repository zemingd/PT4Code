N,M,C = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
N.times do 
  a = gets.split.map(&:to_i)
  val = 0
  M.times do |i|
    val += a[i] * b[i]
  end
  val +=  C
  ans += 1 if val > 0
end
p ans