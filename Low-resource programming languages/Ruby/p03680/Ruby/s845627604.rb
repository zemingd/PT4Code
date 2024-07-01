N = gets.to_i
A = []
N.times do
  A << gets.to_i
end

success = false
i = 0
ex = Array.new(N, false)
while 1
  break if ex[i]
  if A[i] == 2
    success = true
    break
  end
  ex[i] = true
  i = A[i] - 1
end
puts success ? i : -1