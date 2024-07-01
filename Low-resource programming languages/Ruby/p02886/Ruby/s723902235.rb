attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift[0]
D = attrs.shift
result = 0
for i in 0..(N - 1) do
  for j in 0..(N - 1) do
    result += D[i] * D[j] unless i == j
  end
end

puts result / 2