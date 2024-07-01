n, *a = $stdin.read.split.map(&:to_i)

h = Hash.new { 0 }

a.each do |x|
  h[x - 1] += 1
  h[x] += 1
  h[x + 1] += 1
end

freq = 0
h.each_value do |v|
  freq = v if freq < v
end

puts freq
