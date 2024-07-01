n, m = gets.split(" ").map(&:to_i)
gates = []
m.times do
  gates.push(gets.split(" ").map(&:to_i))
end

mins = []
maxs = []

gates.each do |gate|
  mins.push(gate[0])
  maxs.push(gate[1])
end

minmax = mins.max
maxmin = maxs.min

answer = n - minmax + 1
if n > maxmin
  answer -= n - maxmin
end

puts answer