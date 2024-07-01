c = 0
a, b, c = gets.split.map(&:to_i)
(a..b).each do |i|
  if c %i == 0 then c += 1
end
puts c