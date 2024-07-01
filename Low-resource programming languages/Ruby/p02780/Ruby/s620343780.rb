attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N, K = attrs.shift
P = attrs.shift

first = P[0...K].inject(:+)
current = 0
m = 0 # max
for i in (K - 1)...(P.length) do
  if current == 0 then
    current = first
  else
    current = current - P[i - K] + P[i]
  end
  expected = (current + K) / 2.0
  m = [m, expected].max
end
puts m