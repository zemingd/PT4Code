attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift[0]
X = attrs.shift

results = []
for p in 1..100 do
  sum = 0
  for i in 0...N do
    sum += (X[i] - p) ** 2
  end
  results << sum
end
puts results.min