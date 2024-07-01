N = gets.to_i
H = gets.split(' ').map(&:to_i)
ans = 0
cnt = 0
1.upto(N-1) do |i|
  if H[i-1] < H[i]
    cnt = 0
  else
    cnt += 1
    ans = [ans, cnt].max
  end
end
puts ans