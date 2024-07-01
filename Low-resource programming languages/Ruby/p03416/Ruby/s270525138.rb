A,B = gets.split.map(&:to_i)

cnt = 0
(A..B).each do |i|
  s = i.to_s
  cnt += 1 if s[0..(s.length/2-1)] == s.reverse[0..(s.length/2-1)]
end
p cnt