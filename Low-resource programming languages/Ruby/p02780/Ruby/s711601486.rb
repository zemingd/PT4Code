attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N, K = attrs.shift
P = attrs.shift

e1 = []
for i in 0...(P.length - K + 1) do
  e1 << P[i...(i + K)].inject(:+)
end

e2 = []
for i in 0...e1.length do
  e2 << (e1[i] + K) / 2.0
end

puts e2.max

