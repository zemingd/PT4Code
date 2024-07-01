N, Q = gets.split.map(&:to_i)
S = " " + gets.chomp

cums = Array.new(N+1, 0)
2.upto(N) do |i|
  cums[i] = cums[i-1]
  cums[i] += 1 if S[i-1, 2] == "AC"
end

Q.times do
  l, r = gets.split.map(&:to_i)
  res = cums[r] - cums[l-1]
  res -= 1 if S[l-1, 2] == "AC"
  puts(res)
end
