N = gets.to_i
S = gets.chomp
cand = []
1.upto(N - 1) do |i|
  l = S[0..(i - 1)].split('')
  r = S[i..(N - 1)].split('')
  cand.push((l & r).uniq.size)
end
puts cand.max