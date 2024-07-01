N,Q = gets.split.map(&:to_i)
S = gets.chomp

Q.times do
  l,r = gets.split.map(&:to_i)
  s = S[l-1,r-l+1]
  s.gsub!(/AC/, 'X')
  p s.count('X')
end