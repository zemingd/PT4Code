n = gets.to_i
h = Hash.new(0)
max = 0

n.times do
  s = gets.chomp
  h[s] += 1
  max = h[s] if max < h[s]
end

result = []
h.each do |k, v|
  result.push(k) if v == max
end

result.sort.each {|s| puts s }