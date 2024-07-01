x, n = gets.split.map(&:to_i)
pi = gets.split.map(&:to_i)
ai = (0..100).to_a
delta_min = 999
ans = 999

pi.each do |p|
  ai[p] = 999
end

ai = ai.reverse

ai.each do |a|
  if delta_min >= (a-x).abs
    delta_min = (a-x).abs
    ans = a
  end
end

#p ai
puts ans
