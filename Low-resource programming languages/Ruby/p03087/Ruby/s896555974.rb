N,Q = gets.split.map(&:to_i)
S = gets.chomp
ac = [0]*(N)
(N-1).times do |i|
  if S[i] == "A" && S[i+1] == "C"
    ac[i+1] = ac[i] + 1
  else
    ac[i+1] = ac[i]
  end
end
Q.times do
  l,r = gets.split.map(&:to_i)
  p ac[r-1]-ac[l-1]
end
