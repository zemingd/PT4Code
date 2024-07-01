n, k = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)
m = n
while true do
  dame = false
  s = m.to_s
  d.each do |c|
    if s.include?(c.to_s)
      dame = true
      break
    end
  end
  break if not dame
  m += 1
end
puts m
