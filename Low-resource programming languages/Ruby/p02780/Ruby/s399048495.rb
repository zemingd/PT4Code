_, k = gets.split("\s").map(&:to_i)
p = gets.split("\s").map(&:to_i)
max = 0.0
now = 0.0
p_range = []

p.each do |i|
  if p_range.size >= k
    former = p_range.shift
    now -= (1+former)/2.0
  end
  p_range.push(i)
  now += (1+i)/2.0

  max = now if now > max
end

p max