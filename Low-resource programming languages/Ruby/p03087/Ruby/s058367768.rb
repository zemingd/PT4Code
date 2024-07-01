(N, Q) = gets.split.map(&:to_i)
S = gets.chomp

d = Array.new(N + 1, 0)

2.upto(N) do |i|
  if S[i - 2...i] == "AC"
    d[i] = d[i - 1] + 1
  else
    d[i] = d[i - 1]
  end
end

Q.times do
  l, r = gets.split.map(&:to_i)
  puts d[r] - d[l]
end