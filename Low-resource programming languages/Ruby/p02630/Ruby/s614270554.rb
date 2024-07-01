n = gets.to_i
as = gets.split.map(&:to_i)
q = gets.to_i
bcs = []
q.times do
  bcs << gets.split.map(&:to_i)
end

s = as.sum
h = {}
as.each do |a|
  h[a] ||= 0
  h[a] += 1
end

bcs.each do |bc|
  b, c = bc
  d = h[b] || 0
  s = s - b*d + c*d
  h[b] = 0
  h[c] ||= 0
  h[c] += d
  puts s
end