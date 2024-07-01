n, k = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)
e = [*0..9] - d

endloop = false
m = n
while not endloop do
  s = m.to_s
  d.each do |c|
    if s.include?(c.to_s)
      m += 1
      break
    else
      endloop = true
    end
  end
end
puts m
