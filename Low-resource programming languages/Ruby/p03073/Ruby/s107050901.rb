S = gets.chomp
N = S.size

l0 = S[0] == '0' ? 0 : 1
l1 = S[0] == '1' ? 0 : 1
1.upto(N-1) do |i|
  c0 = l1 + (S[i] == '0' ? 0 : 1)
  c1 = l0 + (S[i] == '1' ? 0 : 1)
  l0, l1 = c0, c1
end

p [l0, l1].min