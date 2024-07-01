N, K = gets.chomp.split.map(&:to_i)
S = gets.chomp
s = []
(0..N-1).each do |x|
  s << S[x]
end
s[K-1] = s[K-1].downcase
puts s.join