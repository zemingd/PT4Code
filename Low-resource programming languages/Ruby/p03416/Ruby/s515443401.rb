a, b = gets.split.map(&:to_i)

total = 0
a.upto(b) do |i|
  s = i.to_s
  total += 1 if s==s.reverse
end

p total
