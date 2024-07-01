N, M, C = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)

ans = 0
N.times do
  a = gets.split(' ').map(&:to_i)
  val = C
  M.times do |i|
    val += a[i] * B[i]
  end
  ans += 1 if val > 0
end

puts ans