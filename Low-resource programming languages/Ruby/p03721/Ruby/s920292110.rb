N, K = gets.split.map(&:to_i)
S = Array.new(1 << 20,0)
N.times do
  a,b = gets.split.map(&:to_i)
  S[a] += b
end

count = 0
ans = (1 .. 10 ** 5).find do |i|
  S[i] += S[i - 1]
  S[i] >= K
end
puts ans

  