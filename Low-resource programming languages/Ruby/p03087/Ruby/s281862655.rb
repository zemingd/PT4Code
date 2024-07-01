def ints
  gets.split.map(&:to_i)
end

N, Q = ints
S = gets.strip

counts = Array.new(S.length, 0)
1.upto(S.length - 1) do |i|
  ac = 0
  if S[i - 1] == 'A' && S[i] == 'C'
    ac = 1
  end
  counts[i] = counts[i - 1] + ac
end

Q.times do
  l, r = ints
  l -= 1
  r -= 1

  puts counts[r] - counts[l]
end
