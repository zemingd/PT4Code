N = gets.to_i
A = gets.split.map(&:to_i)

INF = 10**9
dp0 = [-INF] * (N+1)
dp1 = [-INF] * (N+1)
dp0[0] = 0

N.times do |i|
  dp0[i+1] = [dp0[i+1], dp0[i] + A[i]].max
  dp0[i+1] = [dp0[i+1], dp1[i] - A[i]].max
  if i<N-1
    dp1[i+1] = [dp1[i+1], dp0[i] - A[i]].max
    dp1[i+1] = [dp1[i+1], dp1[i] + A[i]].max
  end
end
puts [dp0[N], dp1[N]].max
