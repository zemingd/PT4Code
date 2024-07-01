A, B = gets.split.map(&:to_i)

c = 0
A.upto(B) do |i|
  s = i.to_s
  if i == s.chars.reverse.join.to_i
    c += 1
  end
end
p c