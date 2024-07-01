A, B = gets.strip.split.map(&:to_i)

c = 0
(A..B).each do |i|
  c += 1 if i.to_s.eql?(i.to_s.reverse)
end
puts c
