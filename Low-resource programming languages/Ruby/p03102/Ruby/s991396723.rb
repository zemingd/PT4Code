N, M, C = STDIN.gets.chomp.split(' ').map(&:to_i)
B = STDIN.gets.chomp.split(' ').map(&:to_i)

A = Array.new(20)

for i in 0..N - 1 do
  A[i] = STDIN.gets.chomp.split(' ').map(&:to_i)
end

result = 0
answer = 0
for j in 0..N - 1 do
  for k in 0..M - 1 do
  	answer += A[j][k] * B[k]
  end
  answer += C
  if answer > 0 then
    result += 1
  end
  answer = 0
end
puts result