N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i).sort

ans = 0
amx = A.max
tmp = Array.new(amx+1, true)
(0...N).each{|i|
  f = tmp[A[i]]
  wk = 1
  while wk * A[i] <= amx && tmp[wk*A[i]] do
    tmp[wk*A[i]] = false
    wk += 1
  end
  next if i < N-1 && A[i] == A[i+1]
  ans += 1 if f
}

puts ans
