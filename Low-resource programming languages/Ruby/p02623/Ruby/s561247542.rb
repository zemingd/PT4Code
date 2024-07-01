N, M, K = gets.split.map &:to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
i,j =0,0
time = 0
loop do
  if a[i] < b[j]
    time += a[i]
    break if time > K
    i += 1
    break if i == N
  else
    time += b[j]
    break if time > K
    j += 1
    break if j == M
  end
end


  loop do
    time += b[j]
    break if time > K
    j += 1
    break if j == M
  end if i == N && j != M

  loop do
    time += a[i]
    break if time > K
    i += 1
    break if i == N
  end if j == M && i != N

puts i + j
